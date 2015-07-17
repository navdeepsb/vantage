/**
 * @controller For controlling the customer related activities
 * @name customerCtrl
 * @dependency
 *     + $location    - Service for navigation
 *     + $cookies     - Service for managing cookies
 *     + customerSvc  - Service for handling the customer-related activities
 */
vantage.controller( "customerCtrl", [ "$scope", "$location", "$cookies", "customerSvc", function( $scope, $location, $cookies, customerSvc ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};

	var sessionId = $cookies.get( "sessionId" );

	customerSvc.save({}, { "sessionId": sessionId }, function( response ) {
		if( response.code === STATUS_CODES.SUCCESS ) {
			console.log( "Success!", response );
			$scope.customers = response.data;
		}
		else {
			console.log( "Error!", response );
		}
	});

}]);