<?php
    $file = $_FILES["file"];
    
    $filename = $file["name"];//获取文件名
    $error = $file["error"];
    $type = $file["type"];
    if($error>0){
        echo '文件上传失败！';
    }else{
        //判断上传文件类型
        if($type == 'image/jpg'|| $type == 'image/png'|| $type == 'image/jpeg'){
//            $file = time();
            $filename_arr = explode(".", $filename);
            $filename = time().'.'.$filename_arr[1];
            $path = '../public/upload/'.$filename;
            if(file_exists($filename)){
                echo '文件已经上传过了！';
            }else{
                //文件转存
                if(move_uploaded_file($file["tmp_name"], $path)){
                    //上传成功裁切图片
                    include 'cut.php';
                    session_start();
                    $realpath = cut($path);
                    $_SESSION["realpath"]=$realpath;
                    echo $realpath;
                }else{
                    echo '文件上传失败！';
                }
            }
        }else{
            echo '文件格式错误！';
        }
    }
?>