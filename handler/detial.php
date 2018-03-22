<?php 

	$id = $_GET["id"];
    require 'db.php';

    $sql = "SELECT * FROM movie WHERE id = $id";
    
    echo getJsonString(getDatas($sql));
    