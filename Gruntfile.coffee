###
# @desc The Gruntfile responsible for automating all the tasks
# @author Navdeep
###

module.exports = ( grunt ) ->

	# Load all the plugins:
	grunt.loadNpmTasks "grunt-contrib-copy"
	grunt.loadNpmTasks "grunt-contrib-stylus"
	grunt.loadNpmTasks "grunt-contrib-watch"

	# Config storing all the important paths:
	pathConfig =
		styles:
			preprocess: "styles"
			built: "src/main/webapp/assets/css"
		scripts:
			vendorSrc: "bower_components"
			vendorDest: "src/main/webapp/assets/js/lib"

	# Intialize the tasks to perform accordingly:
	grunt.initConfig

		# Store the `package.json` file in a nifty variable:
		pkg: grunt.file.readJSON "package.json"

		# Get the path config inside this closure:
		path: pathConfig

		# Copy @task
		copy:
			angular:
				expand: true
				cwd: "<%= path.scripts.vendorSrc %>/angular/"
				src: [ "angular.min.js" ]
				dest: "<%= path.scripts.vendorDest %>/"
			angularRoute:
				expand: true
				cwd: "<%= path.scripts.vendorSrc %>/angular-route/"
				src: [ "angular-route.min.js" ]
				dest: "<%= path.scripts.vendorDest %>/"
			angularResource:
				expand: true
				cwd: "<%= path.scripts.vendorSrc %>/angular-resource/"
				src: [ "angular-resource.min.js" ]
				dest: "<%= path.scripts.vendorDest %>/"
			angularCookies:
				expand: true
				cwd: "<%= path.scripts.vendorSrc %>/angular-cookies/"
				src: [ "angular-cookies.min.js" ]
				dest: "<%= path.scripts.vendorDest %>/"
			angularMD5:
				expand: true
				cwd: "<%= path.scripts.vendorSrc %>/angular-md5/"
				src: [ "angular-md5.min.js" ]
				dest: "<%= path.scripts.vendorDest %>/"
			angularBase64:
				expand: true
				cwd: "<%= path.scripts.vendorSrc %>/angular-base64/"
				src: [ "angular-base64.min.js" ]
				dest: "<%= path.scripts.vendorDest %>/"

		# Stylus @task
		stylus:
			options:
				compress: false
				banner: """
					/*!
					 * <%= pkg.name %>
					 * @ver <%= pkg.version %>
					 * @author <%= pkg.author %>
					 */\n
					"""
			main:
				files:
					"<%= path.styles.built %>/main.css" : "<%= path.styles.preprocess %>/index.styl"

		# Watch @task
		watch:
			styles:
				files: [ "<%= path.styles.preprocess %>/{,*/}*.styl" ]
				tasks: [ "stylus" ]

	# Register tasks:
	grunt.registerTask "default", "Sets up the app so it can run", [
		"stylus"
		"copy:angular"
		"copy:angularRoute"
		"copy:angularResource"
		"copy:angularCookies"
		"copy:angularMD5"
		"copy:angularBase64"
	]