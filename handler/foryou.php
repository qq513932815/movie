<?php 
    require 'db.php';

    $sql = "SELECT * FROM movie LIMIT 0,6";
    
    echo getJsonString(getDatas($sql));
    