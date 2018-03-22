
directive_fun("heade", "header");
directive_fun("foot", "footer");
directive_fun("search", "search");
directive_fun("load", "load");

function directive_fun(dir_name, file) {
    douban.directive(dir_name, [function() {
            return {
                restrict: "E",
                templateUrl: "template/" + file + ".html",
                replace: true
            }
        }])
};

//写个指令
// douban.directive('onFinish', function(){
// 	return {
// 		restrict: 'A',
// 		link:function(scope, elements, attris){
// 			//已经是子节点 如何触发传递到父节点的事件
// 			if(scope.$last == true){
// 				// scope.$emit('onFinishedList');//触发事件
// 				$(".item-box").find('a').click(function(){
				    
// 				});
// 			}
// 		}
// 	}
// });