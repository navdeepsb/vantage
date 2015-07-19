/**
 * @controller For controlling the logout activity
 * @name logoutCtrl
 * @dependency
 *     + $rootScope  - Service for managing the app's root scope
 *     + $location   - Service for navigation
 *     + logoutSvc   - Service for handling the login process
 *     + currUserSvc  - Service for managing current logged-in user's data
 */
vantage.controller( "logoutCtrl", [ "$scope", "$rootScope", "$location", "logoutSvc", "currUserSvc", function( $scope, $rootScope, $location, logoutSvc, currUserSvc ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};

	var toSend = {
		"sessionId"  : currUserSvc.getData().sessionId
	};

	logoutSvc.save({}, toSend, function( response ) {
		if( response.code === STATUS_CODES.SUCCESS ) {
			// Unset the attributes of this user:
			currUserSvc.unsetData();
			$rootScope.isLoggedIn = false;
			// Navigate to the login page:
			$location.url( "login" );
		}
		else {
			console.log( "Error occurred for logout:", response );
		}
	});

}]);