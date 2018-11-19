function HelloAngular($scope){
	$scope.greeting={
		text:"hello"
	}
}

var app = angular.module("app",[]);
app.controller("HelloAngular",function($scope){
	$scope.greeting = {
		text:'hello'
	}
});

app.controller("rootCtrl",function($rootScope,$scope){
	$rootScope.root = "html";
	$scope.click = function(){
		console.log(123);
	};
});