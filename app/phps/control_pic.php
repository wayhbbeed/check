<?php 

require './sm.inc.php';
error_reporting(E_ERROR);

$link=$_REQUEST['link'];
echo $link;die();
$bno=$_REQUEST['bno'];

 $smarty->assign('link',$link); 
 $smarty->assign('bno',$bno); 

 $smarty->display('pic.tpl');  