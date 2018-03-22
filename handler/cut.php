<?php

function cut($image) {
    $imgstream = file_get_contents($image);
//    print_r($imgstream);
    //获取图片的宽高
    $img = imagecreatefromstring($imgstream);

    $src_w = imagesx($img); //width
    $src_h = imagesy($img); //height
    //计算比例
    $dst_w = 160;
    $dst_h = 224;

    $dst_scala = $dst_h / $dst_w; //目标的比例
    $src_scala = $src_h / $src_w; //上传的比例

    if ($src_scala > $dst_scala) {
        $w = intval($src_w);
        $h = intval($w * $dst_scala);
    } else {
        $w = intval($src_h);
        $h = intval($src_w / $dst_scala);
    }
    if (function_exists('imagecreatetruecolor')) {
        $dim = imagecreatetruecolor($dst_w, $dst_h);
    } else {
        $dim = imagecreate($dst_w, $dst_h);
    }

    //图片拷贝
    imagecopyresampled($dim, $img, 0, 0, 0, 0, $dst_w, $dst_h, $w, $h);
    header('Content-type:image/jpeg');
    $newname = time();
    imagejpeg($dim, "../public/upload/$newname.jpg");

    imagedestroy($dim);
    echo "./public/upload/$newname.jpg";
}
