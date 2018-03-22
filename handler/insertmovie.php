<?php
    $moviename = $_POST["moviename"];
    $movierole = $_POST["movierole"];
    $movieyear = $_POST["movieyear"];
    $moviescore = $_POST["moviescore"];
    $doubanurl = $_POST["doubanurl"];
    $heighturl = $_POST["heighturl"];
    $moviewords = $_POST["moviewords"];
    $realpath = $_POST["realpath"];
    
    
    //插入评论
    require 'db.php';
    
    $sql = "INSERT INTO movie (name, date,performer,brief,images,typeid,score,state,hot, doubanurl, heighturl) 
            VALUES ('$moviename', 2017, '$movierole', '$moviewords', '$realpath', 
            2, $moviescore, 1, 1, '$doubanurl', '$heighturl')";
    
    echo insertData($sql);