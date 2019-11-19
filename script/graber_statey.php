<?php 
// include '../libs/simple_html_dom.php';
$html = file_get_html('http://englishon-line.ru/gaseti.html');
foreach ($html->find('.recent_post') as $block) {
	foreach ($block->find('li') as $row) {
		// foreach ($row->find('img') as $element) {
		$img = $row->find('img',0);
		$a = $row->find('a',0);
		$img->src = 'http://englishon-line.ru/'.$img->src;
		$text = $row->find('div',0);
		$text = explode('/',$text->innertext);
		// echo "<a class=\"blog-content material\" href=\""."sddfg"."\" style='background-image: url(".$img->src."); background-size: cover;'><span>".$text->innertext."</span></a>";
		echo "<a class=\"blog-content material\" href=\"".$a->href."\" ><span>".$text[1]."</span></a>";
		
	}
}


?>