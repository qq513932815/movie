var douban = angular.module('doubanApp', ['ngRoute']);

douban.config(['$routeProvider', function($routeProvider) {
        $routeProvider
                .when('/', {
                    templateUrl: './view/hotmovie.html'
                })
                .when('/soonmovie', {
                    templateUrl: 'view/soonmovie.html'
                })
                .when('/detail/:id', {
                    templateUrl: 'view/detail.html'
                })
                .when('/showing', {
                    templateUrl: 'view/showing.html'
                })
                .when('/ranking', {
                    templateUrl: 'view/ranking.html'
                })
                .when('/ranking/:id', {
                    templateUrl: 'view/ranking.html'
                })
                .when('/public', {
                    templateUrl: 'view/public.html'
                })
                .when('/addmovie', {
                    templateUrl: 'view/addmovie.html'
                })
                .when('/search/:name', {
                    templateUrl: 'view/search.html'
                })
                .when('/video', {
                    templateUrl: 'view/movie.html'
                })
    }]);