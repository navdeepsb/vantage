<!DOCTYPE html>
<html lang="en" ng-app="vantage">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="shortcut icon" href="assets/img/favicon.ico">
	<link rel="stylesheet" href="assets/css/main.css">
	<title ng-bind="pageTitle">Vantage</title>
</head>
<body ng-cloak>

	<!-- Include the dynamic header on the page -->
	<div ng-include="'templates/header.tpl.html'"></div>

	<div class="container">
		<!-- And prepare a tag for containg views for various routes -->
		<div ng-view></div>
	</div>

	<!-- Vendor scripts -->
	<script src="assets/js/lib/angular.min.js"></script>
	<script src="assets/js/lib/angular-route.min.js"></script>
	<script src="assets/js/lib/angular-resource.min.js"></script>
	<script src="assets/js/lib/angular-cookies.min.js"></script>
	<script src="assets/js/lib/angular-md5.min.js"></script>
	<script src="assets/js/lib/angular-base64.min.js"></script>
	<!-- App modules -->
	<script src="assets/js/vantage.js"></script>
	<!-- Controllers -->
	<script src="assets/js/ctrl/login-ctrl.js"></script>
	<script src="assets/js/ctrl/logout-ctrl.js"></script>
	<script src="assets/js/ctrl/header-ctrl.js"></script>
	<script src="assets/js/ctrl/customer-ctrl.js"></script>
	<script src="assets/js/ctrl/customer-details-ctrl.js"></script>
	<!-- Services -->
	<script src="assets/js/svc/auth-svc.js"></script>
	<script src="assets/js/svc/login-svc.js"></script>
	<script src="assets/js/svc/logout-svc.js"></script>
	<script src="assets/js/svc/curr-user-svc.js"></script>
	<script src="assets/js/svc/customer-svc.js"></script>
	<script src="assets/js/svc/customer-details-svc.js"></script>
</body>
</html>