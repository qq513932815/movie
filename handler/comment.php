<?php
	
	$mid = $_GET["mid"];

    require 'db.php';
    $sql = "SELECT * FROM comment WHERE mid = $mid";
    
    echo getJsonString(getDatas($sql));
