<?php 

$link=$_REQUEST['link'];

// $link=iconv("UTF-8","GBK//IGNORE",$link);
$one_path =$link;
// $one_path = iconv("UTF-8","GBK//IGNORE",$one_path);
$two_path = '0.png';

//定义报告的缩放大小，W宽值
$ones=1240;
//定义印章的缩放大小；
$twos=250;

//创建图片的实例
$one = imagecreatefromstring(file_get_contents($one_path));
$two = imagecreatefromstring(file_get_contents($two_path));
//获取水印图片的宽高
list($one_w, $one_h) = getimagesize($one_path);
list($two_w, $two_h) = getimagesize($two_path);
$one_new_w=$ones;
//缩放：现在的高度h=原图宽度w*（现在的宽度w/原图的宽度w）
$one_new_h=$one_w*($one_new_w/$one_w);
//创建印章新图像
$w=$twos;
$h=$twos;
$two_new=imagecreatetruecolor($w, $h);
//分配颜色 + alpha，将颜色填充到新图上
$alpha = imagecolorallocatealpha($two_new, 0, 0, 0, 127);
imagefill($two_new, 0, 0, $alpha);
imagesavealpha($two_new, true);

//缩放
//关键函数，参数（目标资源，源，目标资源的开始坐标x,y, 源资源的开始坐标x,y,目标资源的宽高w,h,源资源的宽高w,h）
imagecopyresampled($two_new, $two, 0, 0, 0, 0, $w, $h, $two_w, $two_h);
// 将水印图片复制到目标图片上，最后个参数50是设置透明度，这里实现半透明效果
// imagecopymerge($one, $two_new, 800, 300, 0, 0, $two_w, $two_h, 10);
// 如果水印图片本身带透明色，则使用imagecopy方法
imagecopy($one, $two_new, 800, 400, 0, 0, $w, $h);
//输出图片
list($one_new_w, $one_new_h, $one_type) = getimagesize($one_path);
switch ($one_type) {
    case 1://GIF
        header('Content-Type: image/gif');
        imagegif($one);
        break;
    case 2://JPG
        header('Content-Type: image/jpeg');
        // $filename='mess.jpg';
        // imagejpeg($one,$filename);
        imagejpeg($one);
        break;
    case 3://PNG
        header('Content-Type: image/png');
        imagepng($one);
        break;
    default:
        break;
}
imagedestroy($one);
imagedestroy($two);