<?php

    $con = mysqli_connect('localhost', 'root', 'root');
    if (!$con) {
        $error = ["code" => "-1", "msg" => "数据库连接失败"];
        echo json_encode($error);
    }
    mysqli_set_charset($con, "utf8");
    mysqli_select_db($con, "doubanwang");

    //封装方法
    //执行一个查询
    function executeQuery($sql) {
        global $con;
        return mysqli_query($con, $sql);
    }

    //返回一个数组
    function getDatas($sql) {
        $result = executeQuery($sql);
        $ret_arr = [];
        while ($row = mysqli_fetch_assoc($result)) {
            $ret_arr[] = $row; //赋值
        }
        colse_db();
        return $ret_arr;
    }
    
    //返回数组中第一个数据
    function getOneData($sql){
//        $result = getDatas($sql);
//        if(empty($result)){
//            return '';
//        }else{
            return getDatas($sql)[0];
//        }
    }

    //返回一个json字符串
    function getJsonString($arr){
        if(is_array($arr)){
            return json_encode($arr, JSON_UNESCAPED_UNICODE);
        }else{
            return '';
        }
    }

    // //修改json中的时间戳
    // function setJsonTime($arr){
    //     echo getJsonString($arr);
    //     $json = json_decode(getJsonString($arr), true);
    //     $json["date"] = date("Y年m月d日 H:i:s",time());
    //     return $json;
    // }
    
    //返回受影响的行数
    function crud($sql){
        executeQuery($sql);//执行插入操作
        global $con;
        if(mysqli_affected_rows($con) > 0){  //返回受影响的行数
            return 1;
        }else{
            return 0;
        }
        colse_db();
    }


    //插入操作
    function insertData($sql){
        return crud($sql);
    }
    
    //更新操作
    function updateData($sql){
       return crud($sql);
    }

    //删除操作
    function deleteData($sql){
       return crud($sql);
    }

    //关闭数据库
    function colse_db(){
        global $con;
        mysqli_close($con);
    }