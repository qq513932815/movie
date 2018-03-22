<?php
    require 'db.php';
    
    $sql = "SELECT m.*,t.name typename FROM movie m 
                    LEFT JOIN type t on t.id=m.typeid 
                    WHERE m.state = 2";
    
    echo getJsonString(getDatas($sql));