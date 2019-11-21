<?php 
session_start();
require_once "classes/autoload.php";
$db = new DB();
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
	
	<header id="header" class="material">
		<div></div>
		<div class="header_item container"><p>ГЛАВНАЯ</p></div>
		<div class="header_item gramm_head_item"><p>УРОКИ</p></div>
		<!-- <div class="header_item test_head_item"><p>ТЕСТЫ</p></div> -->
		<div class="header_item profile_head_item"><p>МОЙ ПРОФИЛЬ</p></div>
		<div></div>
	</header>
	<!-- <div id="test_head_item">
		<center><img src="src/2.png" alt=""><br>
		<h1 style="font-family: Arial; font-weight: 900;">ЧИПСИКИ</h1></center>
	</div> -->
	
	<div id="container">
		<div class="gramm-block material">
			<iframe width="100%" height="100%" src="https://www.youtube.com/embed/videoseries?list=PLD6SPjEPomasIFEwzlWscfw8qtwiDsDgL" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
		</div>
		<div class="acount-block material">
			<?php 
			if (isset($_SESSION['login'])) {
				echo $_SESSION["id"].$_SESSION["login"].$_SESSION["pass"]."<br>";
				echo '<input type="button" id="exit" value="ВЫЙТИ">';
			} else {
				echo '<div class="notice">
				<h2>А вы знали?</h2><br>
			Что было бы отлично, если бы вы зашли в свой аккаунт <br>
			</div>
			<div class="log_form" style="display: none;">
				<h3>Введите логин и пароль:</h3>
				<input type="text" id="login_log" placeholder="Логин"><br><br>
				<input type="text" id="login_pas" placeholder="Пароль"><br>

			</div>
			
			<div class="buttons">
				<div class="button" id="login">войти</div>
				<!-- <div class="button" id="registration">регистрация</div> -->
			</div>';
			}
			 ?>
			
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
			<h2>Словарь</h2>
			<span>Просто введите слово <br> на английском языке</span><br><br>
			<input type="text" class="textbox_slovar"><br>
			
			<div class="output">
				<blockquote>
					<p>Не ошибается лишь тот, кто ничего не делает! 
					Не бойтесь ошибаться&nbsp;— бойтесь повторять ошибки.</p>
					<p>Теодор Рузвельт</p>
				</blockquote>
			</div>
		</div>
		<div class="blog-block material">
			
			<?php include 'script/graber_statey.php'; ?>
		</div>
		
	</div>
	<div class="viktoryna material">
		<?php include 'script/viktoryna.php' ?>
	</div>
	<div id="gramm_head_item">
		<!-- <center><img src="src/1.jpg" alt=""><br>
		<h1 style="font-family: Arial; font-weight: 900;">ХОБА</h1></center> -->
		<?php 
include 'script/gramm_parser.php';
		 ?>
	</div>
	<div id="profile_head_item">
		<?php echo $_SESSION["id"].$_SESSION["login"].$_SESSION["pass"]; ?>
	</div>
<script src="js/script.js"></script>
<script>
	let timerId = setInterval(function(){$("#hyinya").load(location.href + " #hyinya");} , 2000)
</script>
</body>
</html>