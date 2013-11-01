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
          alias: [
            './src/seedrandom.js:seedrandom'
            './tmp/qalib.js:qalib'
          ]
        files: [
          './lib/seedramdom.js': './src/seedrandom.js'
          './dist/qalib.js': './tmp/qalib.js'
        ]


    watch:
      changes:
        files: ['src/*.ls']
        tasks: ['lsc', 'browserify','jasmine']

    jasmine:
      src: 'dist/*.js'
      options :
        specs : 'test/*.js'


  # Load the livescript compiler.
  grunt.loadNpmTasks('grunt-lsc')
  grunt.loadNpmTasks('grunt-contrib-jasmine')
  grunt.loadNpmTasks('grunt-browserify')
  grunt.loadNpmTasks('grunt-contrib-watch')

  # Default task(s).
  grunt.registerTask('default', ['lsc', 'browserify', 'jasmine', 'watch'])

