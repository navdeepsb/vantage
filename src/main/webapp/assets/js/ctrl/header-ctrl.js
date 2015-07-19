/**
 * @controller For controlling the header
 * @name headerCtrl
 * @dependency
 *     + $rootScope   - Service for managing the app's root scope
 *     + currUserSvc  - Service for managing current logged-in user's data
 */
vantage.controller( "headerCtrl", [ "$scope", "$rootScope", "currUserSvc", function( $scope, $rootScope, currUserSvc ) {

	// Set the logged in status:
	$rootScope.isLoggedIn   = currUserSvc.isLoggedIn();

	// Set the display name, too:
	$rootScope.userDispName = currUserSvc.getData().fullName;

}]);