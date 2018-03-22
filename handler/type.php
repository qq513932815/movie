<?php
    require 'db.php';
    
    $sql = "SELECT * FROM type";
    
    echo getJsonString(getDatas($sql));
?>