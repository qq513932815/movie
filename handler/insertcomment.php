<?php
    $mid = $_POST["mid"];
    $date = $_POST["time"];
    $content = $_POST["user_input"];
    $username = $_POST["username"];
    $face = $_POST["face"];
    
    //插入评论
    require 'db.php';
    
    $sql = "INSERT INTO comment (mid,date,content,username,face) 
    		VALUES ($mid, $date, '$content', '$username', '$face');";
    
    if(insertData($sql)!=0){
        echo "30000";
    }else{
        echo "30001";
    }