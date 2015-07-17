/**
 * @service The service providing various functionalities related to authentication
 * @name authSvc
 * @dependency
 *     + md5     - To convert an input to a MD5 hash
 *     + base64  - To Base64 encode / decode an input
 */
vantage.factory( "authSvc", [ "md5", "$base64", function( md5, $base64 ) {

	return {
		/**
		 * @desc Returns a random 32-character string
		 */
		token: function() {
			return md5.createHash( Math.random().toString() );
		},

		/**
		 * @desc Returns a MD5 of the `input` string
		 */
		MD5: function( input ) {
			return md5.createHash( input || "" );
		},

		/**
		 * @desc Returns a Base64 encoded string of the `input`
		 */
		base64Encode: function( input ) {
			return $base64.encode( input || "" );
		},

		/**
		 * @desc Returns a Base64 decoded string of the `input`
		 */
		base64Decode: function( input ) {
			return $base64.decode( input || "" );
		}
	};

}]);