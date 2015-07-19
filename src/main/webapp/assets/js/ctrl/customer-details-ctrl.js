/**
 * @controller For controlling the customer details activities
 * @name customerDetailsCtrl
 * @dependency
 *     + $routeParams        - Service for getting route parameters from the URL
 *     + currUserSvc         - Service for managing current logged-in user's data
 *     + customerDetailsSvc  - Service for handling the customer details activities
 */
vantage.controller( "customerDetailsCtrl", [ "$scope", "$routeParams", "currUserSvc", "customerDetailsSvc", function( $scope, $routeParams, currUserSvc, customerDetailsSvc ) {

	// Defined by backend:
	var STATUS_CODES = {
		SUCCESS : 0,
		ERROR   : 1,
	};

	var toSend = {
		"sessionId"  : currUserSvc.getData().sessionId,
		"customerid" : $routeParams.customerId
	};

	customerDetailsSvc.save({}, toSend, function( response ) {
		if( response.code === STATUS_CODES.SUCCESS ) {
			$scope.customer = response.data;
		}
		else {
			console.log( "Error occurred for fetching customer details:", response );
		}
	});

}]);