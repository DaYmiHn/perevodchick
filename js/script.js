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

$('.true').click(function(){$(this).css({"background-color": "green"}); $('.viktoryna').html(''); $('.viktoryna').load( "../script/viktoryna.php" ); });
$('.false').click(function(){$(this).css({"background-color": "red"}); $('.viktoryna').html(''); $('.viktoryna').load( "../script/viktoryna.php" ); });

