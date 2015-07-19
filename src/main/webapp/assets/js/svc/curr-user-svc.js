/**
 * @service This service persists data related to the current logged-in user
 * @name currUserSvc
 * @dependency
 *     + $cookies  - To store data in cookies
 */
vantage.factory( "currUserSvc", [ "$cookies", function( $cookies ) {

	return {
		/**
		 * @desc Sets user data in cookie
		 */
		setData: function( sessionId, username, fullName ) {
			$cookies.put( "sessionId", sessionId );
			$cookies.put( "username",  username );
			$cookies.put( "fullName",  fullName );
		},

		/**
		 * @desc Unsets user data in cookie, used on logout
		 */
		unsetData: function() {
			$cookies.remove( "sessionId" );
			$cookies.remove( "username" );
			$cookies.remove( "fullName" );
		},

		/**
		 * @desc Returns login status of current user
		 */
		isLoggedIn: function() {
			return $cookies.get( "sessionId" ) ? true : false;
		},

		/**
		 * @desc Returns user data in an object
		 */
		getData: function() {
			return {
				sessionId : $cookies.get( "sessionId" ),
				username  : $cookies.get( "username" ),
				fullName  : $cookies.get( "fullName" )
			};
		}
	};

}]);