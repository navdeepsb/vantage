/**
 * @controller For controlling the login activity
 * @name loginCtrl
 * @dependency
 *     + loginSvc  - Service for handling the login process
 *     + authSvc   - Service providing authentication methods like Base64 encode, etc.
 */
vantage.controller( "loginCtrl", [ "$scope", "$location", "loginSvc", "authSvc", function( $scope, $location, loginSvc, authSvc ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};
	$scope.reqObj = {};

	$scope.login = function() {
		// Reset the error message:
		$scope.errorMsg = "";

		$scope.reqObj.token = "QCiTzbXCAYA3AvDgYN3MuBwY/1i89q6TfW7aVS1Av1c=";
		$scope.reqObj.digest = "6R1HZqYJFfRQUA0L/hqCEA==";
		$scope.reqObj.user = {
			username : "john.doe",
			password : "X03MO1qnZdYdgyfeuILPmQ=="
		};

		loginSvc.save({}, $scope.reqObj, function( response ) {
			console.log( response.code + " : " + response.message );
			if( response.code === STATUS_CODES.SUCCESS ) {
				$location.url( "customers" );
				console.log( "Hurray!" );
			}
			else {
				$scope.errorMsg = response.message || "An error has occurred!";
			}
		});

	};

}]);