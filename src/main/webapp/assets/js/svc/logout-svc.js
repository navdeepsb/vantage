/**
 * @service This service provides logout functionalities to the app
 * @name logoutSvc
 * @dependency
 *    + $resource  - Angular's service for handling REST calls
 */
vantage.factory( "logoutSvc", [ "$resource", function( $resource ) {

	return $resource( "logout" );

}]);