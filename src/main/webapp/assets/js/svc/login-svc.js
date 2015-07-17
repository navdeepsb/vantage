/**
 * @service This service provides login functionalities to the app
 * @name loginSvc
 * @dependency
 *    + $resource  - Angular's service for handling REST calls
 */
vantage.factory( "loginSvc", [ "$resource", function( $resource ) {

	return $resource( "authenticate" );

}]);