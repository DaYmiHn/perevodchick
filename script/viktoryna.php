<?php 
if (!isset($db)) {
 	include  $_SERVER['DOCUMENT_ROOT'].'/classes/DB.class.php';
 } 
$db = new DB();
$db->viktoryna();
 ?>