<?php 
// include '../libs/simple_html_dom.php';
$html = file_get_html('http://englishon-line.ru/grammatika.html');
foreach ($html->find('.recent_post') as $block) {
	$i=1;
	foreach ($block->find('a') as $row) {
		if($i>5)break;
		echo "<h2 class='gramm_head' id='".$i."'>".$row->innertext."</h2>";
		$stat = file_get_html($row->href);
		echo "<div class='gramm_body' id='".$i."'>".substr($stat->find(".span8 .span8",0)->innertext, 0, -90)."</div>";
		$i++;
	}
}


?>