<?php 

	$sword = $_GET["sword"];
    require 'db.php';

    $sql = "SELECT m.*,t.name typename FROM movie m 
			LEFT JOIN type t ON m.typeid=t.id 
			WHERE m.name LIKE '%$sword%'";
    
    echo getJsonString(getDatas($sql));
    