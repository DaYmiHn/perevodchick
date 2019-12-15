<?php 
require_once "../classes/DB.class.php";
$db = new DB();
if($_GET['act'] == 'get'){
$db->get_fio($_GET['id']);
} else{

$db->change_fio($_GET['fio'],$_GET['id']);
$sql = "UPDATE `user` SET `fio` = `".$_GET['fio']."` WHERE `id`=".$_GET['id'];	
echo $sql;
$result = $db->connection->query($sql);
}
 ?>