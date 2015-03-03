<?php 
require './sm.inc.php';
error_reporting(E_ERROR);

$bno=$_REQUEST['bno'];

$server ="LPP-20140312390\s2008";  //服务器IP地址,如果是本地，可以写成localhost，本例是多个实例
$uid ="sa";  //用户名
$pwd ="sql2008"; //密码
$database ="CDTXYYBJP";  //数据库名称
//进行数据库连接
$conn =mssql_connect($server,$uid,$pwd) or die ("connect failed");
mssql_select_db($database,$conn);
 
//执行查询语句
$query ="declare @enddate varchar(10) "
		."set @enddate=$bno "
		."select m.p_id, m.batchno,m.Pathname,m.repNo into #aaa from medreport m where m.batchno=@enddate "
		."select p.name into #bbb from products p where product_id=(select TOP 1 a.p_id from #aaa a) "
		."select a.p_id,a.batchno,a.Pathname,b.name,a.repNo from #aaa a,#bbb b "
		."drop table #aaa "
		."drop table #bbb ";
$row =mssql_query($query);
  
//打印输出查询结果
$arr=array();
while($list=mssql_fetch_row($row))
{
	$arr[]=$list;
}
$num=count($arr);
$s=auto_charset($arr,'gbk','utf-8');
$row=null;
$conn=null;
		if($num){
		        $smarty->assign('single','success');   
				$smarty->assign('ss',$s);
		}else{			
		        $smarty->assign('single','none');   
		}

	$smarty->display('index.tpl');

// $fContents 字符串
// $from 字符串的编码
// $to 要转换的编码
function auto_charset($fContents,$from='gbk',$to='utf-8'){
    $from   =  strtoupper($from)=='UTF8'? 'utf-8':$from;
    $to       =  strtoupper($to)=='UTF8'? 'utf-8':$to;
    if( strtoupper($from) === strtoupper($to) || empty($fContents) || (is_scalar($fContents) && !is_string($fContents)) ){
        //如果编码相同或者非字符串标量则不转换
        return $fContents;
    }
    if(is_string($fContents) ) {
        if(function_exists('mb_convert_encoding')){
            return mb_convert_encoding ($fContents, $to, $from);
        }else{
            return $fContents;
        }
    }
    elseif(is_array($fContents)){
        foreach ( $fContents as $key => $val ) {
            $_key =     auto_charset($key,$from,$to);
            $fContents[$_key] = auto_charset($val,$from,$to);
            if($key != $_key )
                unset($fContents[$key]);
        }
        return $fContents;
    }
    else{
        return $fContents;
    }
}
