/**
 * @controller For controlling the customer related activities
 * @name customerCtrl
 * @dependency
 *     + $location    - Service for navigation
 *     + $cookies     - Service for managing cookies
 */
vantage.controller( "navbarCtrl", [ "$scope", "$location", "$cookies", function( $scope, $location, $cookies ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};

	var sessionId = $cookies.get( "sessionId" );

	$scope.isLoggedIn = sessionId ? true : false;

}]);