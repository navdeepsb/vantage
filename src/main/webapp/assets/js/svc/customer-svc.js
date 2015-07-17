/**
 * @service This service provides customer-related functionalities to the app
 * @name customerSvc
 * @dependency
 *    + $resource  - Angular's service for handling REST calls
 */
vantage.factory( "customerSvc", [ "$resource", function( $resource ) {

	return $resource( "customer/list" );

}]);