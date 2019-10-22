<?php 
include 'classes/DB.class.php';
require_once "libs/simple_html_dom.php";
$db = new DB('1','2');
if(isset($_GET['word']) && isset($_GET['perevod'])){
	$db->add_word_history($_GET['word'],$_GET['perevod']);
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
	<link rel="stylesheet" href="css/style.css">
	<script src="https://code.jquery.com/jquery-3.4.1.min.js" integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<div class="gramm-block material">
			hsdf
		</div>
		<div class="acount-block material">
			acount
		</div>
		<div class="history-block material">
			<h1>История слов:</h1> 
			<div class="history-content">
				<hr>
				<span id="hyinya">
					<?php $db->select('history', 'ORDER BY id DESC'); ?>
				</span>
			</div>
		</div>
		<div class="slovar-block material">
			slovar
		</div>
		<div class="blog-block material">
			<?php include 'script/graber_statey.php'; ?>
		</div>
	</div>

<script>
	let timerId = setInterval(function(){$("#hyinya").load(location.href + " #hyinya");} , 2000)
</script>
</body>
</html>