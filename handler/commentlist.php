<?php

    require 'db.php';
    $sql = "SELECT * FROM comment";
    
    echo crud($sql);//返回受影响的行数
