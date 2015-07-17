/**
 * @controller For controlling the customer details activities
 * @name customerDetailsCtrl
 * @dependency
 *     + $location           - Service for navigation
 *     + $cookies            - Service for managing cookies
 *     + $routeParams        - Service for getting route parameters from the URL
 *     + customerDetailsSvc  - Service for handling the customer details activities
 */
vantage.controller( "customerDetailsCtrl", [ "$scope", "$location", "$cookies", "$routeParams", "customerDetailsSvc", function( $scope, $location, $cookies, $routeParams, customerDetailsSvc ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};

	console.log( "Route params:", $routeParams );
	var sessionId = $cookies.get( "sessionId" );
	var toSend    = {
		"sessionId"  : sessionId,
		"customerid" : $routeParams.customerId
	};

	customerDetailsSvc.save({}, toSend, function( response ) {
		if( response.code === STATUS_CODES.SUCCESS ) {
			console.log( "Success!", response );
			$scope.customer = response.data;
		}
		else {
			console.log( "Error!", response );
		}
	});

}]);