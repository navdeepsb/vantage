<!DOCTYPE html>
<html lang="en" ng-app="vantage">
<head>
	<meta http-equiv="content-type" content="text/html; charset=utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Vantage</title>
	<link rel="stylesheet" href="assets/css/main.css">
</head>
<body ng-cloak>
	<div class="center" ng-controller="navbarCtrl">
		<p ng-hide="isLoggedIn">
			<br />
			<br />
			<img src="assets/img/vantage-logo-white.png" alt="Vantage" width="100">
			<br />
			<img src="assets/img/vantage-logo-text-white.png" alt="Vantage" width="110">
		</p>
		<br />
		<div class="grid" ng-show="isLoggedIn">
			<div class="col col-6 t-left">
				<img src="assets/img/vantage-logo-white.png" alt="Vantage" width="70">
			</div>
			<div class="col col-6 no-gutter t-right" style="padding-top: 20px">
				<img src="assets/img/user-white.png" alt="User" width="40" class="align-middle">
				&nbsp;
				John Doe
				&nbsp;
				|
				&nbsp;
				<a href="#/logout">Logout</a>
			</div>
		</div>
	</div>

	<br />

	<div class="container">
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
	<script src="assets/js/ctrl/customer-ctrl.js"></script>
	<script src="assets/js/ctrl/navbar-ctrl.js"></script>
	<script src="assets/js/ctrl/logout-ctrl.js"></script>
	<script src="assets/js/ctrl/customer-details-ctrl.js"></script>
	<!-- Services -->
	<script src="assets/js/svc/auth-svc.js"></script>
	<script src="assets/js/svc/login-svc.js"></script>
	<script src="assets/js/svc/customer-svc.js"></script>
	<script src="assets/js/svc/logout-svc.js"></script>
	<script src="assets/js/svc/customer-details-svc.js"></script>
</body>
</html>