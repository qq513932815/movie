<?php
    //获取影片详情
    $id = "";
    if(isset($_GET["mid"])){
        $id = $_GET["mid"];
    }else{
        die("输入有误");
    }
    
    require 'db.php';
     
    $sql = "SELECT m.*,t.name type FROM movie m 
            LEFT JOIN type t ON t.id = m.typeid
            WHERE m.id=$id;";
    
    echo getJsonString(getOneData($sql));