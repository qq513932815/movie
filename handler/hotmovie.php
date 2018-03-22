<?php 
    require 'db.php';

    $sql = "SELECT m.*,t.name typename FROM movie m 
                    LEFT JOIN type t on t.id=m.typeid 
                    WHERE m.hot = 1";
    
    echo getJsonString(getDatas($sql));
    