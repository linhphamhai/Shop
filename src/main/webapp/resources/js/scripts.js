var productManager = angular.module('productManager', [ 'ngResource' ]);

productManager.controller('productController', function($scope, $http) {

	$scope.suppliers = [];
	$scope.categories = [];
	$scope.products = [];
	$scope.pages = [];
	loadDataCategory();
	loadDataSupplier();
	resetForm();
	$scope.showModal = showModal;
	$scope.loadDataProduct = loadDataProduct;
	$scope.loadDataPage = loadDataPage;
	$scope.clickAction = clickAction;

	loadDataProduct(1);
	loadDataPage();


	function loadDataProduct(page) {
		$http({
			method : 'GET',
			url : "/Shop/product-api/get-by-page?page=" + page + "&max= 10",
		}).then(function(res) { // success
			$scope.products = res.data;
			console.log($scope.products);
		}, function(res) { // error
			console.log("Error: " + res.status + " : " + res.data);
		});
	}

	function loadDataPage() {
		$http({
			method : 'GET',
			url : "/Shop/product-api/get-size",
		}).then(function(res) {
			$scope.pages = [];
			var total = res.data.size / 10 + 1;
			for (var i = 1; i <= total; i++) {
				$scope.pages.push(i);
			}
			console.log($scope.pages);
		}, function(res) { // error
			console.log("Error: " + res.status + " : " + res.data);
		});
	}

	function clickAction() {
		console.log($scope.currentProduct);
	}

	function showModal(product) {
		console.log(product);
		if (product == null || typeof product == 'undefined') {
			resetForm();
		} else {
			$scope.currentProduct.id = product.id;
			$scope.currentProduct.name = product.name;
			$scope.currentProduct.description = product.description;
			$scope.currentProduct.price = product.price;
			$scope.currentProduct.currentPrice = product.currentPrice;
			$scope.currentProduct.quantity = product.quantity;
			$scope.currentProduct.supplierId = product.supplier.id;
			$scope.currentProduct.categoryId = product.category.id;
		}
		console.log($scope.currentProduct);

	}

	function loadDataCategory() {
		$http({
			method : 'GET',
			url : "/Shop/category-api/get-all"
		}).then(function(res) { // success

			$scope.categories = [];
			$scope.categories.push({
				id : 0,
				name : "Chưa chọn"
			});
			$scope.categories.push.apply($scope.categories, res.data);
		}, function(res) { // error
			console.log("Error: " + res.status + " : " + res.data);
		});
	}

	function loadDataSupplier() {
		$http({
			method : 'GET',
			url : "/Shop/supplier-api/get-all"
		}).then(function(res) { // success
			$scope.suppliers = [];
			$scope.suppliers.push({
				id : 0,
				name : "Chưa chọn"
			});
			$scope.suppliers.push.apply($scope.suppliers, res.data);
			console.log($scope.suppliers);
		}, function(res) { // error
			console.log("Error: " + res.status + " : " + res.data);
		});
	}

	function resetForm() {
		$scope.currentProduct = {
			id : 0,
			name : "",
			description : "",
			image : "",
			price : "",
			currentPrice : "",
			quantity : 0,
			categoryId : 0,
			supplierId : 0

		};
	}

})