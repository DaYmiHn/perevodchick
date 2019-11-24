<?php 
require_once "../classes/DB.class.php";
$db = new DB();
$db->change_fio($_GET['fio'],$_GET['id']);
$sql = "UPDATE `user` SET `fio` = `".$_GET['fio']."` WHERE `id`=".$_GET['id'];	
echo $sql;
$result = $db->connection->query($sql);
 ?>