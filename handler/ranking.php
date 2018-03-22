<?php
$id = "";
if(isset($_GET["tid"])){
		$id = $_GET["tid"];
}

    require 'db.php';
    if($id==""|| $id==0){
	    $sql = "SELECT m.*,t.name typename FROM movie m 
				LEFT JOIN type t on t.id=m.typeid 
				ORDER BY score DESC";
	    
	    echo getJsonString(getDatas($sql));
    }else{
	    $sql = "SELECT m.*,t.name typename FROM movie m 
				LEFT JOIN type t on t.id=m.typeid 
				WHERE m.typeid = $id
				ORDER BY score DESC";
	    
	    echo getJsonString(getDatas($sql));
    }
    
    