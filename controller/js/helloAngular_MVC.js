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

app.controller("rootCtrl",function($rootScope){
	$rootScope.root = "html";
});