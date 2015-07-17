###
# @desc The Gruntfile responsible for automating all the tasks
# @author Navdeep
###

module.exports = ( grunt ) ->

	# Load all the plugins:
	grunt.loadNpmTasks "grunt-contrib-copy"
	grunt.loadNpmTasks "grunt-contrib-sass"
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

		# Get the path config inside this closure:
		path: pathConfig

		# Copy @task
		copy:
			angular:
				expand: true
				cwd: "<%= path.scripts.vendorSrc %>/angular/"
				src: [ "angular.min.js" ]
				dest: "<%= path.scripts.vendorDest %>/"

		# SASS @task
		sass:
			options:
				update: true,     # To only compile changed files
				trace: true,      # To show a full traceback on error
				style: "expanded" # [ "nested", "compact", "compressed", "expanded" ]
			styles:
				files:
					"<%= path.styles.built %>/main.css" : "<%= path.styles.preprocess %>/index.scss"

		# Watch @task
		watch:
			styles:
				files: [ "<%= path.styles.preprocess %>/{,*/}*.scss" ]
				tasks: [ "sass" ]

	# Register tasks:
	grunt.registerTask "default", "Sets up the app so it can run", [
		"sass"
		"copy:angular"
	]