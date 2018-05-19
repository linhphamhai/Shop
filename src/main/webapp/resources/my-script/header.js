var headerManager = angular.module("headerManager", [ 'ngResource' ]);

headerManager.controller("categoryController", function($scope, $http) {
	$scope.categories = [];
	loadData();
	function loadData() {
		$http({
			method : 'GET',
			url : "/Shop/category-api/get-all"
		}).then(function(res) { // success
			$scope.categories = res.data;
			console.log($scope.categories);
		}, function(res) { // error
			console.log("Error: " + res.status + " : " + res.data);
		});
	}
});
headerManager.controller("supplierController", function($scope, $http) {
	$scope.suppliers = [];
	loadData();
	function loadData() {
		$http({
			method : 'GET',
			url : "/Shop/supplier-api/get-all"
		}).then(function(res) { // success
			$scope.suppliers = res.data;
			console.log($scope.suppliers);
		}, function(res) { // error
			console.log("Error: " + res.status + " : " + res.data);
		});
	}
})