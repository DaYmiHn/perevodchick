// chrome.tabs.executeScript(null, {code:"alert(window.getSelection().toString());"})

// var selection = window.getSelection(); 
// var range = selection.getRangeAt(0); 
// if (range) { 
//   var div = document.createElement('div'); 
//   div.appendChild(range.cloneContents()); 
//   alert(div.innerHTML); 
// }

// var selection = window.getSelection(); 
// var range = selection.getRangeAt(1); 
// if (range) { 
//   var div = document.createElement('div'); 
//   div.appendChild(range.cloneContents()); 
//   alert(div.innerHTML); 
// }

// function perevod(selection){
// 	$.getJSON("https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20190929T094201Z.cc36a63d4b046b8b.606aadcd15ac16c6f64b393298912fbd492c3cb0&text="+selection+"&lang=ru&format=plain&options=1", function(result){
// 	    return selection+" - "+result.text;
//   	});
// }



chrome.tabs.executeScript( {
  code: "window.getSelection().toString();"
}, function(selection) {
	$.getJSON("https://translate.yandex.net/api/v1.5/tr.json/translate?key=trnsl.1.1.20190929T094201Z.cc36a63d4b046b8b.606aadcd15ac16c6f64b393298912fbd492c3cb0&text="+selection+"&lang=ru&format=plain&options=1", function(result){
	    var text = selection+" - "+result.text;
  		$('#output').html(text);
  		$.ajax({
				url: "http://perevod/index.php?word="+selection+"&perevod="+result.text,
				success: function(data){
					console.log(data);

				}
			});
  	});
});
// chrome.browserAction.onClicked.addListener(function(tab) {
	// chrome.tabs.executeScript({
 //    code: ""
 //  });
  chrome.tabs.executeScript({
    file: 'insert.js'
  });
// });

// https://translate.yandex.net/api/v1.5/tr.json/translate
 // ?key=trnsl.1.1.20190929T094201Z.cc36a63d4b046b8b.606aadcd15ac16c6f64b393298912fbd492c3cb0&text=Hello world&lang=ru&format=plain&options=1
