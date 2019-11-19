<?php
class DB {

protected 	$db_name = 'perevod',
			$db_user = 'root',
			$db_pass = '',
			$db_host = 'localhost';
protected 	$connection;

function __construct() {
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

public function viktoryna() {
	$sql = "SELECT * FROM history ORDER BY RAND() LIMIT 1";
	$result = $this->connection->query($sql);
	while ($row=$result->fetch()){
		echo  "<div class=\"word\">".$row['word']."</div>";	
		echo  "<div class=\"var true\">".$row['perevod']."</div>";	
	}
	$sql = "SELECT * FROM history ORDER BY RAND() LIMIT 1";
	$result = $this->connection->query($sql);
	while ($row=$result->fetch()){
		echo  "<div class=\"var false\">".$row['perevod']."</div>";	
	}
}

}