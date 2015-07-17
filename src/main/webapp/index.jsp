<!DOCTYPE html>
<html lang="en" ng-app="vantage">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Vantage</title>
	<link rel="stylesheet" href="assets/css/main.css">
</head>
<body>

	<p class="title center">Vantage</p>
	<p class="center">A sales representative web application</p>
	<br />
	<p class="center"><a href="#/login">login</a></p>
	<br />
	<div ng-view></div>

	<!-- Vendor scripts -->
	<script src="assets/js/lib/angular.min.js"></script>
	<script src="assets/js/lib/angular-route.min.js"></script>
	<script src="assets/js/lib/angular-resource.min.js"></script>
	<script src="assets/js/lib/angular-md5.min.js"></script>
	<script src="assets/js/lib/angular-base64.min.js"></script>
	<!-- App modules -->
	<script src="assets/js/vantage.js"></script>
	<!-- Controllers -->
	<script src="assets/js/ctrl/login-ctrl.js"></script>
	<!-- Services -->
	<script src="assets/js/svc/auth-svc.js"></script>
	<script src="assets/js/svc/login-svc.js"></script>
</body>
</html>