<?php
class DB {

protected 	$db_name = 'perevod',
			$db_user = 'root',
			$db_pass = '',
			$db_host = 'localhost';
protected 	$connection;

function __construct($name,$name2) {
	$this->connect();
}

public function connect() {
	$this->connection = new PDO('mysql:host='.$this->db_host.';dbname='.$this->db_name.'', $this->db_user, $this->db_pass );
}


public function select($table, $param) {
	$sql = "SELECT * FROM ".$table.' '.$param;
	$result = $this->connection->query($sql);
	while ($row=$result->fetch()){
		echo $table == 'history' ? $row['word']." - ".$row['perevod']."<hr>" : 'ОШИБКА';
		
	}
}
public function add_word_history($word, $perevod) {
	$sql = "INSERT INTO `history`(word, perevod) VALUES ('".$word."', '".$perevod."');";
	$result = $this->connection->query($sql);
}



}