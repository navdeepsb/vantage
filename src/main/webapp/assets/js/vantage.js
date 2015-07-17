/**
 * @module The main module for the web app
 * @name vantage
 * @dependency
 *     + ngRoute      - For routing capabilities in the app
 *     + ngResource   - For consuming REST APIs from backend
 *     + angular-md5  - For MD5 functionalities
 *     + base64       - For encoding / decoding in Base64 format
 */
var vantage = angular.module( "vantage", [ "ngRoute", "ngResource", "ngCookies", "angular-md5", "base64" ] )
	.config( function( $routeProvider, $locationProvider ) {

		// Set up the app routes:
		$routeProvider
			.when( "/login", {
				templateUrl : "templates/login.tpl.html",
				controller  : "loginCtrl"
			})
			.when( "/logout", {
				template    : "Logged out successfully!",
				controller  : "logoutCtrl"
			})
			.when( "/customers", {
				templateUrl : "templates/customer-list.tpl.html",
				controller  : "customerCtrl"
			})
			.when( "/customers/:customerId", {
				templateUrl : "templates/customer-details.tpl.html",
				controller  : "customerDetailsCtrl"
			})
			.otherwise({
				redirectTo  : "/login"
			});

		/**
		 * HTML5 mode for URLs i.e. history.pushState can be enabled
		 * only if the backend is also ready to accept it. Right now
		 * backend is incompatible for HTML5 URLs, so not enabling it
		 * like so:
		 *
		 * $locationProvider.html5Mode({
		 *     enabled     : true,
		 *     requireBase : false
		 * });
		 *
		 */

	});