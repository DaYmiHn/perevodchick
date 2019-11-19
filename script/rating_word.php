<?php 
require_once "../classes/DB.class.php";
$db = new DB();
$result = $db->increment_word_rate($_GET['id'],$_GET['action']);
 ?>