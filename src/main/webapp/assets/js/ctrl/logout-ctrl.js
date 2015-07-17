/**
 * @controller For controlling the logout activity
 * @name logoutCtrl
 * @dependency
 *     + $cookies   - Service for managing cookies
 *     + logoutSvc  - Service for handling the login process
 */
vantage.controller( "logoutCtrl", [ "$scope", "$cookies", "logoutSvc", function( $scope, $cookies, logoutSvc ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};

	var sessionId = $cookies.get( "sessionId" );

	logoutSvc.save({}, { "sessionId": sessionId }, function( response ) {
		console.log( response.code + " : " + response.message );
		if( response.code === STATUS_CODES.SUCCESS ) {
			$cookies.remove( "sessionId" );
		}
		else {
			$scope.errorMsg = response.message || "An error has occurred!";
		}
	});

}]);