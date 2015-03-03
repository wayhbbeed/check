<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>联成迅康</title>
		<style type="text/css">
		*{}
		body{font-size: 18px;background-image:url(./public/images/login_bg.jpg);color: #fff;}
		</style>
	</head>
	<body>
		<div><h2>错误：你正在使用过时的浏览器，请下载标准浏览器进入系统。</h2></div>
		<div>
			<ol>
				<li>你使用了过时的IE浏览器，无法进入界面</li>
				<li>点击下载360浏览器，下载后解压安装</li>
				<li>或者自行下载最新版本的浏览器，如谷歌浏览器，苹果浏览器，火狐浏览器等</li>
			</ol>
		</div>
		<div><a href="./info.php?path=360" style="color:#fff;">下载360浏览器</a></div>
	</body>
</html>
<?php 
    if (isset($_GET['path'])) {
    	    $file='./360.zip';
    		if(is_file($file)) {
            header("Content-Type: application/force-download");
            header("Content-Disposition: attachment; filename=".basename($file));
            readfile($file);
            exit;
	        }else{
	            echo "文件不存在！";
	            exit;
	        }
    }
    
    // $path=null;
    // $path=$_GET['path']?$_GET['path']:0;
    // if (!$path) {
	   //  echo $path;
    // }

	

 ?>