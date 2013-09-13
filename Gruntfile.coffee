module.exports = (grunt) ->

  # Project configuration.
  grunt.initConfig
    lsc:
      scripts:
        options:
          bare: true
        files: [
          cwd: './src/'
          src: '*.ls'
          dest: 'tmp'
          expand: true
          ext: '.js'
        ,
          cwd: './test/'
          src: '*.ls'
          dest: './test/'
          expand: true
          ext: '.js'
        ]

    browserify:
      dist:
        options:
          alias: './tmp/qalib.js:qalib'
        files:
          './dist/qalib.js': './tmp/qalib.js'
        # src: './tmp/qalib.js'
        # dest: './dist/qalib.js'

    jasmine:
      src: 'dist/*.js'
      options :
        specs : 'test/*.js'


  # Load the livescript compiler.
  grunt.loadNpmTasks('grunt-lsc')
  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-browserify')

  # Default task(s).
  grunt.registerTask('default', ['lsc', 'browserify', 'jasmine'])

