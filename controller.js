
//热门电影
douban.controller('hotmovie', ['$scope', '$http', function($scope, $http) {

    $(".load_box").css("display", "block");
    setTimeout(function () {
            $(".load_box").css("display", "none");
        }, 1000);

    $http({
        method: 'get',
        url: 'handler/hotmovie.php'
    }).then(function(response) {//请求报文
        $scope.data = response.data;
        // console.log($scope.data.length);
        //共25 显示前12
        $scope.pageSize = 12; //每页的条数
        //计算总页数
        $scope.pages = Math.ceil($scope.data.length / $scope.pageSize);

        //声明一个数组 用来记录页数1-3
        $scope.pageList = [];
        $scope.pageCount = $scope.pages > 5 ? 5 : $scope.pages;
        $scope.selectPage = 1; //用户选择的页数
        $scope.setData = function() {
            //1 -- 0,12
            //2 -- 12,24
            //($scope.selectPage-1)*$scope.pageSize -- $scope.selectPage*$scope.pageSize
            $scope.movies = $scope.data.slice(($scope.selectPage - 1) * $scope.pageSize, $scope.selectPage * $scope.pageSize);
        };

        //循环添加数字1-$scope.pageCount 添加到pageList
        for (var i = 0; i < $scope.pageCount; i++) {
            $scope.pageList.push(i + 1);
        }

        //js换页算法
        $scope.changPage = function(page) {
            if (page < 1 || page > $scope.pages) {
                return;
            }
            if (page > 2) {//开始处理页码
                var newpagelist = [];
                for (var i = (page - 3); i < ((page + 2) > $scope.pages ? $scope.pages : (page + 2)); i++) {
                    newpagelist.push(i + 1);
                }

                $scope.pageList = newpagelist;
            }
            $scope.selectPage = page;//页码已经修改
            $scope.setData();
        }

        $scope.movies = $scope.data.slice(0, $scope.pageSize);
 		//上一页
        $scope.prev = function() {
            $scope.selectPage = ($scope.selectPage - 1) < 1 ? 1 : ($scope.selectPage - 1);
            $scope.setData();
        }
        //下一页
        $scope.next = function() {
            if ($scope.selectPage >= $scope.pages) {
                $scope.selectPage = $scope.pages;
                $scope.setData();
            } else {
                $scope.selectPage = $scope.selectPage + 1;
                $scope.setData();
            }
        }
        //控制active
        $scope.isactive = function(page) {
            return $scope.selectPage == page;
        }

        // //监听页面是不是所有的电影循环完毕
        // $scope.$on("onFinishedList", function(){
        //     console.log('循环完毕');
        // });
    });

}]);


//即将上映
douban.controller('soonmovie', ['$scope', '$http', function($scope, $http) {

    $(".load_box").css("display", "block");
    setTimeout(function () {
            $(".load_box").css("display", "none");
        }, 1000);

    $http({
        method: 'get',
        url: 'handler/soonmovie.php'
    }).then(function(response) {//请求报文
        $scope.data = response.data;
        // console.log($scope.data.length);
        //共25 显示前12
        $scope.pageSize = 12; //每页的条数
        //计算总页数
        $scope.pages = Math.ceil($scope.data.length / $scope.pageSize);

        //声明一个数组 用来记录页数1-3
        $scope.pageList = [];
        $scope.pageCount = $scope.pages > 5 ? 5 : $scope.pages;
        $scope.selectPage = 1; //用户选择的页数
        $scope.setData = function() {
            //1 -- 0,12
            //2 -- 12,24
            //($scope.selectPage-1)*$scope.pageSize -- $scope.selectPage*$scope.pageSize
            $scope.movies = $scope.data.slice(($scope.selectPage - 1) * $scope.pageSize, $scope.selectPage * $scope.pageSize);
        };

        //循环添加数字1-$scope.pageCount 添加到pageList
        for (var i = 0; i < $scope.pageCount; i++) {
            $scope.pageList.push(i + 1);
        }

        //js换页算法
        $scope.changPage = function(page) {
            if (page < 1 || page > $scope.pages) {
                return;
            }
            if (page > 2) {//开始处理页码
                var newpagelist = [];
                for (var i = (page - 3); i < ((page + 2) > $scope.pages ? $scope.pages : (page + 2)); i++) {
                    newpagelist.push(i + 1);
                }

                $scope.pageList = newpagelist;
            }
            $scope.selectPage = page;//页码已经修改
            $scope.setData();
        }

        $scope.movies = $scope.data.slice(0, $scope.pageSize);
        //上一页
        $scope.prev = function() {
            $scope.selectPage = ($scope.selectPage - 1) < 1 ? 1 : ($scope.selectPage - 1);
            $scope.setData();
        }
        //下一页
        $scope.next = function() {
            if ($scope.selectPage >= $scope.pages) {
                $scope.selectPage = $scope.pages;
                $scope.setData();
            } else {
                $scope.selectPage = $scope.selectPage + 1;
                $scope.setData();
            }
        }
        //控制active
        $scope.isactive = function(page) {
            return $scope.selectPage == page;
        }
    });

}]);

//上影中的电影
douban.controller('showing', ['$scope', '$http', function($scope, $http) {

    $(".load_box").css("display", "block");
    setTimeout(function () {
            $(".load_box").css("display", "none");
        }, 1000);

    $http({
        method: 'get',
        url: 'handler/showing.php'
    }).then(function(response) {//请求报文
        $scope.data = response.data;
        // console.log($scope.data.length);
        //共25 显示前12
        $scope.pageSize = 12; //每页的条数
        //计算总页数
        $scope.pages = Math.ceil($scope.data.length / $scope.pageSize);

        //声明一个数组 用来记录页数1-3
        $scope.pageList = [];
        $scope.pageCount = $scope.pages > 5 ? 5 : $scope.pages;
        $scope.selectPage = 1; //用户选择的页数
        $scope.setData = function() {
            //1 -- 0,12
            //2 -- 12,24
            //($scope.selectPage-1)*$scope.pageSize -- $scope.selectPage*$scope.pageSize
            $scope.movies = $scope.data.slice(($scope.selectPage - 1) * $scope.pageSize, $scope.selectPage * $scope.pageSize);
        };

        //循环添加数字1-$scope.pageCount 添加到pageList
        for (var i = 0; i < $scope.pageCount; i++) {
            $scope.pageList.push(i + 1);
        }

        //js换页算法
        $scope.changPage = function(page) {
            if (page < 1 || page > $scope.pages) {
                return;
            }
            if (page > 2) {//开始处理页码
                var newpagelist = [];
                for (var i = (page - 3); i < ((page + 2) > $scope.pages ? $scope.pages : (page + 2)); i++) {
                    newpagelist.push(i + 1);
                }

                $scope.pageList = newpagelist;
            }
            $scope.selectPage = page;//页码已经修改
            $scope.setData();
        }

        $scope.movies = $scope.data.slice(0, $scope.pageSize);
        //上一页
        $scope.prev = function() {
            $scope.selectPage = ($scope.selectPage - 1) < 1 ? 1 : ($scope.selectPage - 1);
            $scope.setData();
        }
        //下一页
        $scope.next = function() {
            if ($scope.selectPage >= $scope.pages) {
                $scope.selectPage = $scope.pages;
                $scope.setData();
            } else {
                $scope.selectPage = $scope.selectPage + 1;
                $scope.setData();
            }
        }
        //控制active
        $scope.isactive = function(page) {
            return $scope.selectPage == page;
        }
        
    });

}]);

//影片排行榜--类型循环
douban.controller('allType', ['$scope' , '$http', function($scope, $http){

    $http({
        method: 'get',
        url: 'handler/type.php'
    }).then(function(response) {
        $scope.alltype = response.data;
    });
}]);

//影片排行榜
douban.controller('ranking', ['$scope', '$http', '$location', function($scope, $http, $location) {

    $(".load_box").css("display", "block");
    setTimeout(function () {
            $(".load_box").css("display", "none");
        }, 1000);

    var nowUrl = $location.absUrl();
    var newUrl = nowUrl.substring(39);

    $http({
        method: 'get',
        url: 'handler/ranking.php',
        params:{tid:newUrl}
    }).then(function(response) {//请求报文
        $scope.data = response.data;
        // console.log($scope.data.length);
        //共25 显示前12
        $scope.pageSize = 12; //每页的条数
        //计算总页数
        $scope.pages = Math.ceil($scope.data.length / $scope.pageSize);

        //声明一个数组 用来记录页数1-3
        $scope.pageList = [];
        $scope.pageCount = $scope.pages > 5 ? 5 : $scope.pages;
        $scope.selectPage = 1; //用户选择的页数
        $scope.setData = function() {
            //1 -- 0,12
            //2 -- 12,24
            //($scope.selectPage-1)*$scope.pageSize -- $scope.selectPage*$scope.pageSize
            $scope.movies = $scope.data.slice(($scope.selectPage - 1) * $scope.pageSize, $scope.selectPage * $scope.pageSize);
        };

        //循环添加数字1-$scope.pageCount 添加到pageList
        for (var i = 0; i < $scope.pageCount; i++) {
            $scope.pageList.push(i + 1);
        }

        //js换页算法
        $scope.changPage = function(page) {
            if (page < 1 || page > $scope.pages) {
                return;
            }
            if (page > 2) {//开始处理页码
                var newpagelist = [];
                for (var i = (page - 3); i < ((page + 2) > $scope.pages ? $scope.pages : (page + 2)); i++) {
                    newpagelist.push(i + 1);
                }

                $scope.pageList = newpagelist;
            }
            $scope.selectPage = page;//页码已经修改
            $scope.setData();
        }

        $scope.movies = $scope.data.slice(0, $scope.pageSize);
        //上一页
        $scope.prev = function() {
            $scope.selectPage = ($scope.selectPage - 1) < 1 ? 1 : ($scope.selectPage - 1);
            $scope.setData();
        }
        //下一页
        $scope.next = function() {
            if ($scope.selectPage >= $scope.pages) {
                $scope.selectPage = $scope.pages;
                $scope.setData();
            } else {
                $scope.selectPage = $scope.selectPage + 1;
                $scope.setData();
            }
        }
        //控制active
        $scope.isactive = function(page) {
            return $scope.selectPage == page;
        }
    });

}]);

//详情
douban.controller('detial', ['$scope', '$http', '$location', function($scope, $http, $location){

    $(".load_box").css("display", "block");
    setTimeout(function () {
            $(".load_box").css("display", "none");
        }, 1000);

    var nowUrl = $location.absUrl();
    var newUrl = nowUrl.substring(38);

    $http({
        method: 'get',
        url: 'handler/detial.php',
        params:{id:newUrl}
    }).then(function(response) {
        $scope.data = response.data;
    });
     

}]);

//猜你喜欢
douban.controller('foryou', ['$scope', '$http', function($scope, $http){

	$http({
		method: 'get',
		url: 'handler/foryou.php'
	}).then(function(response) {
		$scope.data = response.data;
	});

}]);

//视频链接
douban.controller('yunurl', ['$scope', '$http', '$location', function($scope, $http, $location){

    var nowUrl = $location.absUrl();
    var newUrl = nowUrl.substring(38);

    $http({
        method: 'get',
        url: 'handler/detial.php',
        params:{id:newUrl}
    }).then(function(response) {
        $scope.data = response.data;
    });

}]);

//查询评论
douban.controller('userComment', ['$scope' , '$http', '$location', function($scope, $http, $location){   

    var nowUrl = $location.absUrl();
    var newUrl = nowUrl.substring(38); 

    $http({
        method: 'get',
        url: 'handler/comment.php',
        params:{mid:newUrl}
    }).then(function(response) {
        $scope.comments = response.data;
    });
}]);

//搜索
douban.controller('searchCtrl', ['$scope', '$http', '$location', function($scope, $http, $location) {

    $(".load_box").css("display", "block");
    setTimeout(function () {
            $(".load_box").css("display", "none");
        }, 1000);

    var nowUrl = $location.absUrl();
    var sword = nowUrl.substring(38);
    var deCode = decodeURI(sword);
    // alert(deCode);

    $http({
        method: 'get',
        url: 'handler/search.php',
        params:{sword:deCode}
    }).then(function(response) {//请求报文
        $scope.data = response.data;
        // console.log($scope.data.length);
        //共25 显示前12
        $scope.pageSize = 12; //每页的条数
        //计算总页数
        $scope.pages = Math.ceil($scope.data.length / $scope.pageSize);

        //声明一个数组 用来记录页数1-3
        $scope.pageList = [];
        $scope.pageCount = $scope.pages > 5 ? 5 : $scope.pages;
        $scope.selectPage = 1; //用户选择的页数
        $scope.setData = function() {
            //1 -- 0,12
            //2 -- 12,24
            //($scope.selectPage-1)*$scope.pageSize -- $scope.selectPage*$scope.pageSize
            $scope.movies = $scope.data.slice(($scope.selectPage - 1) * $scope.pageSize, $scope.selectPage * $scope.pageSize);
        };

        //循环添加数字1-$scope.pageCount 添加到pageList
        for (var i = 0; i < $scope.pageCount; i++) {
            $scope.pageList.push(i + 1);
        }

        //js换页算法
        $scope.changPage = function(page) {
            if (page < 1 || page > $scope.pages) {
                return;
            }
            if (page > 2) {//开始处理页码
                var newpagelist = [];
                for (var i = (page - 3); i < ((page + 2) > $scope.pages ? $scope.pages : (page + 2)); i++) {
                    newpagelist.push(i + 1);
                }

                $scope.pageList = newpagelist;
            }
            $scope.selectPage = page;//页码已经修改
            $scope.setData();
        }

        $scope.movies = $scope.data.slice(0, $scope.pageSize);
        //上一页
        $scope.prev = function() {
            $scope.selectPage = ($scope.selectPage - 1) < 1 ? 1 : ($scope.selectPage - 1);
            $scope.setData();
        }
        //下一页
        $scope.next = function() {
            if ($scope.selectPage >= $scope.pages) {
                $scope.selectPage = $scope.pages;
                $scope.setData();
            } else {
                $scope.selectPage = $scope.selectPage + 1;
                $scope.setData();
            }
        }
        //控制active
        $scope.isactive = function(page) {
            return $scope.selectPage == page;
        }
    });

}]);

//搜索数据绑定
douban.controller("sCtrl",function($scope){
    $scope.input="";
});