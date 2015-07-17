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

	<div ng-controller="MyCtrl">
		<ul>
			<li ng-repeat="datum in data">{{datum}}</li>
		</ul>
	</div>

	<script src="assets/js/lib/angular.min.js"></script>
	<script src="assets/js/vantage.js"></script>
</body>
</html>