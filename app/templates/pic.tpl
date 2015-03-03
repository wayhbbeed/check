<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>检验报告查询系统</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<!-- <link href="public/css/base.css" rel="stylesheet" type="text/css"> -->
<link href="public/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="login" style="top:30%;">
<form action="#" method="post" id="form">
	<div><a href="control.php?bno={$bno}">返回查询</a></div>
    {if isset($link)}
    <div id="pic">
        <img id="img" style="width:100%;margin-top:20px;padding:0px;" src="pic.php?link={$link}"/>
    </div>
    {/if}
    <div class="foot">版权所有：四川联成迅康医药股份有限公司</div>
</form>
</div>
<script src="./public/js/jquery.min.js"></script>
<!-- <script src="./public/js/main.js"></script> -->
</body>
</html>