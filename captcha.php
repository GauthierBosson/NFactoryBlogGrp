<?php
session_start();
$_SESSION['captcha'] = mt_rand(1000,9999);
$img = imagecreate(65,30);
$font = 'fonts/Destroy.ttf';

$bg = imagecolorallocate($img,205,50,50);
$textcolor = imagecolorallocate($img, 255, 255, 255);

imagettftext($img, 23, 0, 3, 30, $textcolor, $font, $_SESSION['captcha']);

header('Content-type:image/jpeg');
imagejpeg($img);
imagedestroy($img);

