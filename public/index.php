<?php
    define('HOSTNAME', 'http://luxgen');

    define ('ROOT_PATH', dirname ( __FILE__ ) . '/../');
//    define ('WEB_ROOT', dirname ( __FILE__ ) . '/../'); // TODO rename ROOT_PATH to WEB_ROOT

    define ('ZF_EXT_PATH', ROOT_PATH . 'zf/ext/');
    define ('PUBLIC_PATH', '/');


    define ('WEB_ROOT', HOSTNAME.'/'); // TODO rename PUBLIC_PATH to BASE_URL
    define ('BASE_URL', HOSTNAME.'/'); // TODO rename PUBLIC_PATH to BASE_URL

    define ('SMARTY_DIR', ROOT_PATH . 'zf/third-party/smarty/libs/');
    require_once file_exists ( ROOT_PATH . '.zf_compiled/requirer.php' )
        ? ROOT_PATH . '.zf_compiled/requirer.php'
        : ROOT_PATH . 'zf/requirer.php';
    zf::run_app ();