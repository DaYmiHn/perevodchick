<?php 
session_start();

if ($_GET['pas'] == 'exit'){
	session_destroy();
}else{
	require_once "../classes/DB.class.php";
	$db = new DB();
	$result = $db->login($_GET['log'],$_GET['pas']);
}

?>