<?php 
// include '../libs/simple_html_dom.php';
$html = file_get_html('http://englishon-line.ru/grammatika.html');
foreach ($html->find('.recent_post') as $block) {
	$i=1;
	foreach ($block->find('a') as $row) {
		if($i>5)break;
		echo "<h1>".$row->innertext."</h1>";
		$stat = file_get_html($row->href);
		// $item = $stat->find('.navbar ',0);
		// $item->outertext = '';
		// $item = $stat->find('.span10 ',0);
		// $item->outertext = '';
		// $stat->save();
		// $item = $stat->find('.span3 ',0);
		// $item->outertext = '';
		// $stat->save();
		echo substr($stat->find(".span8 .span8",0), 0, -90);
		$i++;
	}
}


?>