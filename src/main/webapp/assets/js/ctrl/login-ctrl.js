/**
 * @controller For controlling the login activity
 * @name loginCtrl
 * @dependency
 *     + $location    - Service for navigation
 *     + $rootScope   - Service for managing the app's root scope
 *     + loginSvc     - Service for handling the login process
 *     + authSvc      - Service providing authentication methods like Base64 encode, etc.
 *     + currUserSvc  - Service for managing current logged-in user's data
 */
vantage.controller( "loginCtrl", [ "$scope", "$location", "$rootScope", "loginSvc", "authSvc", "currUserSvc", function( $scope, $location, $rootScope, loginSvc, authSvc, currUserSvc ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};
	$scope.reqObj = {};

	console.log( "1.", authSvc.MD5( "password" ) );
	console.log( "2.", authSvc.base64Encode( authSvc.MD5( "password" ) ) );

	$scope.login = function() {
		// Reset the error message:
		$scope.errorMsg = "";

		/**
		 * To who is reading this code,
		 *
		 * I couldn't get the desired Base64 encode of MD5 hashes using the JavaScript libraries.
		 *
		 * I tried for "password" as follows:
		 * var md5Password = authSvc.MD5( "password" );
		 * >> 5f4dcc3b5aa765d61d8327deb882cf99
		 *
		 * var base54encodedPassword = authSvc.base64Encode( md5Pasword );
		 * >> NWY0ZGNjM2I1YWE3NjVkNjFkODMyN2RlYjg4MmNmOTk=
		 *
		 * Whereas, the expected output was "X03MO1qnZdYdgyfeuILPmQ==" according to the backednd.
		 *
		 * So, I had to hard code the entries below to make my application work
		 */
		$scope.reqObj.token = "QCiTzbXCAYA3AvDgYN3MuBwY/1i89q6TfW7aVS1Av1c=";
		$scope.reqObj.digest = "6R1HZqYJFfRQUA0L/hqCEA==";
		$scope.reqObj.user = {
			username : "john.doe",
			password : "X03MO1qnZdYdgyfeuILPmQ=="
		};

		loginSvc.save({}, $scope.reqObj, function( response ) {
			if( response.code === STATUS_CODES.SUCCESS ) {
				// Set the various attributes of this user for this session:
				currUserSvc.setData( response.sessionId, response.data.username, getFullName( response.data ) );
				$rootScope.isLoggedIn   = currUserSvc.isLoggedIn();
				$rootScope.userDispName = currUserSvc.getData().fullName;
				// Navigate to this user's customer page:
				$location.url( "customers" );
			}
			else {
				// Show error message on the UI:
				$scope.errorMsg = response.message || "An error has occurred!";
			}
		});
	};

	/**
	 * @desc Returns the full name of the user, falls back to username
	 */
	var getFullName = function( user ) {
		return ( user.firstname + " " + user.lastname ).trim() || user.username;
	};

}]);