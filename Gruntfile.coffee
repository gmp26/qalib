module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    lsc:
      options:
        bare: true
      files:
        cwd: './src/'
        src: '*.ls'
        dest: 'tmp'
        expand: true
        ext: '.js'

  # Load the livescript compiler.
  grunt.loadNpmTasks('grunt-lsc')

  # Default task(s).
  grunt.registerTask('default', ['lsc'])

