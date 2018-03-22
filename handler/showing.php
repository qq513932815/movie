<?php 
    require 'db.php';

    $sql = "SELECT m.*,t.name typename FROM movie m 
                    LEFT JOIN type t on t.id=m.typeid 
                    WHERE m.state = 1";
    
    echo getJsonString(getDatas($sql));
    