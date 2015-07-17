/**
 * @service This service provides customer  details functionalities to the app
 * @name customerDetailsSvc
 * @dependency
 *    + $resource  - Angular's service for handling REST calls
 */
vantage.factory( "customerDetailsSvc", [ "$resource", function( $resource ) {

	return $resource( "customer/details" );

}]);