<?php 
$text = $_GET['val'];
$user = $_GET['from'];
require_once "../classes/DB.class.php";
$db = new DB();
$sql = "INSERT INTO `chat`(user,body) VALUES ('".$user."','".$text."');";
$result = $db->connection->query($sql);
echo $sql;
 ?>