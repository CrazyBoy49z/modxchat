<?php

use Ratchet\MessageComponentInterface;
use Ratchet\ConnectionInterface;
require_once (MODX_CORE_PATH . 'components/modxchat/model/vendor/autoload.php');

class modxchat implements MessageComponentInterface
{
   /**@var modX $modx */
    public $modx;

    /** @var SplObjectStorage  */
    private $clients;

    /**
     * @var array
     */
    private $config;
    /**
     * @param modX $modx
     * @param array $config
     */
    function __construct(modX &$modx, array $config = array())
    {
        $this->modx =& $modx;

        $corePath = $this->modx->getOption('modxchat.core_path', $config, MODX_CORE_PATH . 'components/modxchat/');
        $assetsPath = $this->modx->getOption('modxchat.assets_path', $config,
            MODX_ASSETS_PATH . 'components/modxchat/'
        );
        $assetsUrl = $this->modx->getOption('modxchat.assets_url', $config, MODX_ASSETS_URL . 'components/modxchat/');
        $actionUrl = $this->modx->getOption('modxchat.action_url', $config, $assetsUrl . 'action.php');
        $connectorUrl = $assetsUrl . 'connector.php';

        $this->config = array_merge(array(
            'corePath' => $corePath,
            'assetsPath' => $assetsPath,
            'modelPath' => $corePath . 'model/',
            'customPath' => $corePath . 'custom/',
            'pluginsPath' => $corePath . 'plugins/',

            'assetsUrl' => $assetsUrl,
            'cssUrl' => $assetsUrl . 'css/',
            'jsUrl' => $assetsUrl . 'js/',
            'connectorUrl' => $connectorUrl,
            'connector_url' => $connectorUrl,
            'actionUrl' => $actionUrl,

            'ctx' => 'web',
            'json_response' => false,
        ), $config);

        $this->modx->addPackage('modxchat', $this->config['modelPath']);
        $this->modx->lexicon->load('modxchat:default');

        $this->clients = new \SplObjectStorage;
    }

    /**
     * When a new connection is opened it will be passed to this method
     * @param  ConnectionInterface $conn The socket/connection that just connected to your application
     * @throws \Exception
     */
    function onOpen(ConnectionInterface $conn)
    {
        $this->clients->attach($conn);

        $this->modx->log(1, print_r($conn,1));
        $this->modx->log(1, "New connection! ({$conn->resourceId})");
    }

    /**
     * This is called before or after a socket is closed (depends on how it's closed).  SendMessage to $conn will not result in an error if it has already been closed.
     * @param  ConnectionInterface $conn The socket/connection that is closing/closed
     * @throws \Exception
     */
    function onClose(ConnectionInterface $conn)
    {
        $this->clients->detach($conn);

        echo "Connection {$conn->resourceId} has disconnected\n";
    }

    /**
     * If there is an error with one of the sockets, or somewhere in the application where an Exception is thrown,
     * the Exception is sent back down the stack, handled by the Server and bubbled back up the application through this method
     * @param  ConnectionInterface $conn
     * @param  \Exception $e
     * @throws \Exception
     */
    function onError(ConnectionInterface $conn, \Exception $e)
    {
        echo "An error has occurred: {$e->getMessage()}\n";

        $conn->close();
    }

    /**
     * Triggered when a client sends data through the socket
     * @param  \Ratchet\ConnectionInterface $from The socket/connection that sent the message to your application
     * @param  string $msg The message received
     * @throws \Exception
     */
    function onMessage(ConnectionInterface $from, $msg)
    {
        $numRecv = count($this->clients) - 1;
        echo sprintf('Connection %d sending message "%s" to %d other connection%s' . "\n"
            , $from->resourceId, $msg, $numRecv, $numRecv == 1 ? '' : 's');

        foreach ($this->clients as $client) {
            if ($from !== $client) {
                // The sender is not the receiver, send to each client connected
                $client->send($msg);
            }
        }
    }
}
