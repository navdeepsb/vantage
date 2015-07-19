/**
 * @controller For controlling the customer related activities
 * @name customerCtrl
 * @dependency
 *     + $location    - Service for navigation
 *     + $rootScope   - Service for managing the app's root scope
 *     + $route       - Service for routing
 *     + currUserSvc  - Service for managing current logged-in user's data
 *     + customerSvc  - Service for handling the customer-related activities
 */
vantage.controller( "customerCtrl", [ "$scope", "$location", "$rootScope", "$route", "currUserSvc", "customerSvc", function( $scope, $location, $rootScope, $route, currUserSvc, customerSvc ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};

	var toSend = {
		"sessionId"  : currUserSvc.getData().sessionId
	};

	customerSvc.save({}, toSend, function( response ) {
		if( response.code === STATUS_CODES.SUCCESS ) {
			// Set the list data:
			$scope.customers = response.data;
		}
		else {
			console.log( "Error occurred for fetching customer list:", response );
		}
	});

	$scope.reload = function() {
		$scope.custFltr  = "";
		$scope.sortOrder = "";
		$route.reload();
	};

}]);