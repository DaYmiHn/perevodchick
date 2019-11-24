// function ajax(url){
// 	$.ajax({url: url,success: function(data){return(data);}});
// }

var from_vkladka = '#container';
$('.header_item').click(function(){
	var to_vkladka = $(this).attr('class').split(' ')[1];
	if(from_vkladka == "#"+to_vkladka)return;
	$(from_vkladka).slideUp(300);
	$("#"+to_vkladka).slideDown(300);
	from_vkladka = "#"+to_vkladka;
});


$('#login').click(function(){
	$(this).css({"grid-column": "1/3"});
	$('#registration').remove();
});


$('.textbox_slovar').keyup(function(){
	var api = "dict.1.1.20191116T165611Z.3a08bd328ca58709.d98fc3f0778c51416b46e13c4f433f53d09ca36d";
	var url="https://dictionary.yandex.net/api/v1/dicservice.json/lookup?key="+api+"&lang=en-ru&text="+$(this).val();
	if ($('.textbox_slovar').val() == '') {$('.output').html('<blockquote><p>Не ошибается лишь тот, кто ничего не делает! Не бойтесь ошибаться&nbsp;— бойтесь повторять ошибки.</p><p>Теодор Рузвельт</p></blockquote>');}
	$.getJSON(url, function(data){
		$('.output').html('');
		$('.output').append("<h3>"+data.def[0].text+"</h3>");
		$('.output').append("<ul>");
		for (var i = 0; i < 5; i++) {
			$('.output').append("<li>"+data.def[0].tr[i].text+"</li>");
		}
		$('.output').append("</ul>");
	});
});

$(document).on('click','.true', function() { 
	$(this).css({"background-color": "green"}); 
	$.ajax({url: '../script/viktoryna.php',success: function(data){$('.viktoryna').html(data)}});
	$.ajax({url: '../script/rating_word.php?id='+this.id+"&action=inc"});
	
});
$(document).on('click','.false', function() { 
	$(this).css({"background-color": "red"}); 
	$.ajax({url: '../script/viktoryna.php',success: function(data){$('.viktoryna').html(data)}});
	$.ajax({url: '../script/rating_word.php?id='+this.id+"&action=dec"});
});

$(document).on('click','.gramm_head', function() { 
	let selector = '#'+this.id+'.gramm_body';
	$(selector).slideToggle();
});

$('#login').click(function(){
	$('.notice').hide();
	$('.log_form').show();
	if ($('.log_form').hasClass('active')) {
		$.ajax({
			type: "GET",
			url: "../script/log_handler.php",
			data: { log: $('#login_log').val(), pas: $('#login_pas').val() },
			success: function(data) {
			  if (data == "да") {console.log('Вошли'); window.location.reload();}
			  if (data == "не") {alert('Не верный логин или пароль')}   
			}
		});   
	} else {
		$('.log_form').addClass("active");
	}
});

$('#exit').click(function(){
	$.ajax({
    url: "../script/log_handler.php?pass=exit",
    success: function(data) {
        window.location.reload();
    }
  });   
});
$('#fio').click(function(){
	// alert();
	if($(this).text() == "Введите Имя и Фамилию"){
		$('#fio').css( "color", "black" );
		$('#fio').css( "text-decoration;", "none" );
	}

});
$('#fio').keyup(function(){
	$.ajax({url: "../script/change_fio.php?fio="+$(this).text()+"&id="+$('#id').val()}); 
});