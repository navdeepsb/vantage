// Create the main module for the Vantage app:
var vantage = angular.module( "vantage", [] )
	.controller("MyCtrl", function( $scope ) {
		$scope.data = [ "Alpha", "Bravo", "Charlie" ];
	});