<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>检验报告</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="viewport" content="width=device-width">
<!-- <link href="public/css/base.css" rel="stylesheet" type="text/css"> -->

<link href="./public/css/login.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="login">
<form action="control.php" method="post" id="formID">
	<div class="logo"></div>
	<div class="error"></div>
    <div class="login_form">
    	<div class="user">
        	<input class="text_value" value="" name="bno" type="text" id="username" />
        </div>
		<input class="button" type="submit" id="btn"/>
    </div>
     <div id="rs">
        <ul id="rsol">
        {if isset($single)}
            {if $single eq "success"}
                {foreach $ss as $s}
                    <li><a href="control_pic.php?link={$s[2]}&bno={$s[1]}">商品：{$s[3]}，批号：{$s[1]}，编号页数：{$s[4]}</a></li>
                {/foreach}
            {else}
                     <li style="color:#FFD700;">没有查询到</li>
            {/if}
        {/if}
        </ul>
    </div>
   
    <div class="foot">四川联成迅康医药股份有限公司，版本1.0.1</div>
</form>
</div>
<script src="./public/js/jquery.min.js"></script>
<script>
		$(function(){
		
		$('.button').click(function(){
		    $('.error').hide(); 
			var data=$('#username').val();
			var len = data.length; 
			if(len < 1){ 
                $('.error').html("<label style='padding-left:30px;font-size:18px;color:yellow;'>请输入批号!</label>").show("fast"); 
                event.preventDefault();
                //return false;				<!--preventDefault()防止按钮把用户数据提交到服务器 --> 
            }else{ 
                $('.error').hide();  
            } 
			//return false;
		});
		
		});
</script>
</body>
</html>