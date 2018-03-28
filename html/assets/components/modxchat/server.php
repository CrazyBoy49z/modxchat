<?php
define('MODX_API_MODE', true);
require dirname(dirname(dirname(dirname(__FILE__)))) . '/index.php';
require_once (MODX_CORE_PATH . 'components/modxchat/model/modxchat/modxchat.class.php');
require_once (MODX_CORE_PATH . 'components/modxchat/model/vendor/autoload.php');

use Ratchet\Server\IoServer;
use Ratchet\Http\HttpServer;
use Ratchet\WebSocket\WsServer;




/** @noinspection PhpIncludeInspection */


$modx->getService('error', 'error.modError');
$modx->setLogLevel(modX::LOG_LEVEL_ERROR);
$modx->setLogTarget('FILE');


$server = IoServer::factory(
    new HttpServer(
        new WsServer(
            new modxchat($modx, [])
        )
    ),
    8080
);

$server->run();