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
	.config( [ "$routeProvider", "$locationProvider", function( $routeProvider, $locationProvider ) {

		// Set up the app routes:
		$routeProvider
			.when( "/login", {
				title       : "Vantage | Login",
				templateUrl : "templates/login.tpl.html",
				controller  : "loginCtrl"
			})
			.when( "/logout", {
				template    : "Logged out successfully!",
				controller  : "logoutCtrl"
			})
			.when( "/customers", {
				title       : "Vantage | All customers",
				templateUrl : "templates/customer-list.tpl.html",
				controller  : "customerCtrl"
			})
			.when( "/customers/:customerId", {
				title       : "Vantage | Customer details",
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

	}])
	.run( [ "$rootScope", "$location", "currUserSvc", function( $rootScope, $location, currUserSvc ) {

		var APP_TITLE_DEFAULT = "Vantage"; // the default page title for the app

		// Check whether user logged in or not:
		$rootScope.$on( "$routeChangeStart", function( event, next, current ) {
			var isLoggedIn = currUserSvc.isLoggedIn();
			if( !isLoggedIn ) {
				// User not logged in, prevent user from accessing any page:
				$location.url( "login" );
			}
			else if( isLoggedIn && next.$$route.originalPath === "/login" ) {
				// User logged in and trying to access login page, prevent:
				event.preventDefault();
			}
		});

		// Set the page title for various routes:
		$rootScope.$on( "$routeChangeSuccess", function( event, current, previous ) {
			$rootScope.pageTitle = current.$$route.title || APP_TITLE_DEFAULT;
		});

	}]);