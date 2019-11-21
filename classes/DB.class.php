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
	$sql = "SELECT * FROM history ORDER BY `rating` ASC LIMIT 1";
	$result = $this->connection->query($sql);
	$row=$result->fetch();
	echo  "<div class=\"word\">".$row['word']."</div>";	
	$id = $row['id'];
	$true = "<div class=\"var true\" id='".$id."'>".$row['perevod']."</div>";	

	$sql = "SELECT * FROM history ORDER BY RAND() LIMIT 1";
	$result = $this->connection->query($sql);
	$row=$result->fetch();
	$id = $row['id'];
	if ($id % 2 == 0) {
		echo  "<div class=\"var false\" id='".$id."'>".$row['perevod']."</div>";	
		echo $true;

	} else {
		echo $true;
		echo  "<div class=\"var false\" id='".$id."'>".$row['perevod']."</div>";	
	}
	
}

public function increment_word_rate($id,$action) {
	if ($action == 'inc') {
		$sql = "UPDATE `history` SET `rating` = `rating` +1 WHERE `id`=".$id;	
	}else{$sql = "UPDATE `history` SET `rating` = `rating` -1 WHERE `id`=".$id;}
	$result = $this->connection->query($sql);
}


public function login($login,$pass) {
	$sql = "SELECT * FROM user WHERE login = '".$login."'";
	$result = $this->connection->query($sql);
	$row=$result->fetch();
	if ($row['login'] == $login && $row['pass'] == $pass){
     	$_SESSION["id"] = $row['id'];
		$_SESSION["login"] = $login;
     	$_SESSION["pass"] = $pass;
     	echo "да";
	} else {
		$sql = "INSERT INTO `user` (`login`, `pass`) VALUES ('".$login."', '".$pass."')";
		echo $sql;
		$result = $this->connection->query($sql);
		$sql = "SELECT * FROM user WHERE login = '".$login."'";
		$result = $this->connection->query($sql);
		$row=$result->fetch();
     	$_SESSION["id"] = $row['id'];
		$_SESSION["login"] = $login;
     	$_SESSION["pass"] = $pass;
     	echo "да";
	}
}
}