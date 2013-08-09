<?php
session_save_path($_SERVER['DOCUMENT_ROOT'].'/.zf_tmp');
session_name('zfSessionID');
session_start();

if (empty($_SESSION['uid'])) {
    header("HTTP/1.0 404 Not Found");
    exit;
}

$bReturnAbsolute = false;
  
$sBaseFVirtual0 = PUBLIC_PATH . "userfiles";
$sBaseVirtual0 = PUBLIC_PATH . "userfiles/upload";  //Assuming that the path is http://yourserver/Editor/assets/ ("Relative to Root" Path is required)
$sBase0 = $_SERVER['DOCUMENT_ROOT'].PUBLIC_PATH . "userfiles/upload"; //The real path
//$sBase0="/home/yourserver/web/Editor/assets"; //example for Unix server
$sName0="upload";

$sBaseVirtual1="";
$sBase1="";
$sName1="";

$sBaseVirtual2="";
$sBase2="";
$sName2="";

$sBaseVirtual3="";
$sBase3="";
$sName3="";
?>