<?php
/**
 * @Tony W 
 */
//urls
define('ROOT',str_replace("\\","/",__DIR__));
define('ROOT_smarty',ROOT.'/../../libs');

require_once ROOT_smarty.'/Smarty.class.php';
$smarty = new Smarty;

// $smarty->debugging = true;
$smarty->caching = false;
// $smarty->caching = true;
// $smarty->force_compile=true;
$smarty->setTemplateDir(ROOT.'/../templates/');
$smarty->setCompileDir(ROOT.'/../templates_c/');
$smarty->setConfigDir(ROOT.'/../configs/');
$smarty->setCacheDir(ROOT.'/../cache/');

//测试打印
// p($_SESSION);
