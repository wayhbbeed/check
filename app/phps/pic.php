<?php 

$link=$_REQUEST['link'];

// $link=iconv("UTF-8","GBK//IGNORE",$link);
$one_path =$link;
// $one_path = iconv("UTF-8","GBK//IGNORE",$one_path);
$two_path = '0.png';

//���屨������Ŵ�С��W��ֵ
$ones=1240;
//����ӡ�µ����Ŵ�С��
$twos=250;

//����ͼƬ��ʵ��
$one = imagecreatefromstring(file_get_contents($one_path));
$two = imagecreatefromstring(file_get_contents($two_path));
//��ȡˮӡͼƬ�Ŀ��
list($one_w, $one_h) = getimagesize($one_path);
list($two_w, $two_h) = getimagesize($two_path);
$one_new_w=$ones;
//���ţ����ڵĸ߶�h=ԭͼ���w*�����ڵĿ��w/ԭͼ�Ŀ��w��
$one_new_h=$one_w*($one_new_w/$one_w);
//����ӡ����ͼ��
$w=$twos;
$h=$twos;
$two_new=imagecreatetruecolor($w, $h);
//������ɫ + alpha������ɫ��䵽��ͼ��
$alpha = imagecolorallocatealpha($two_new, 0, 0, 0, 127);
imagefill($two_new, 0, 0, $alpha);
imagesavealpha($two_new, true);

//����
//�ؼ�������������Ŀ����Դ��Դ��Ŀ����Դ�Ŀ�ʼ����x,y, Դ��Դ�Ŀ�ʼ����x,y,Ŀ����Դ�Ŀ��w,h,Դ��Դ�Ŀ��w,h��
imagecopyresampled($two_new, $two, 0, 0, 0, 0, $w, $h, $two_w, $two_h);
// ��ˮӡͼƬ���Ƶ�Ŀ��ͼƬ�ϣ���������50������͸���ȣ�����ʵ�ְ�͸��Ч��
// imagecopymerge($one, $two_new, 800, 300, 0, 0, $two_w, $two_h, 10);
// ���ˮӡͼƬ�����͸��ɫ����ʹ��imagecopy����
imagecopy($one, $two_new, 800, 400, 0, 0, $w, $h);
//���ͼƬ
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