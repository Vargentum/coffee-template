gulp = require 'gulp'
$ = require('gulp-load-plugins')()
coffeeLintStylish = require 'coffeelint-stylish'
jasmineReporters = require 'jasmine-reporters'


gulp.task 'coffee', ->
  gulp.src './src/**/*.coffee'
    .pipe($.plumber())
    .pipe($.coffeelint())
    .pipe($.coffeelint.reporter(coffeeLintStylish))
    .pipe($.sourcemaps.init())
    .pipe($.coffee())
    .pipe($.sourcemaps.write())
    .pipe($.concat('app.js'))
    .pipe(gulp.dest('./app'))
    .pipe($.livereload())



gulp.task 'coffee-test', ->
  gulp.src './spec/**/*.coffee'
    .pipe($.plumber())
    .pipe($.coffeelint())
    .pipe($.coffeelint.reporter(coffeeLintStylish))
    .pipe($.coffee())
    .pipe($.concat('appSpec.js'))
    .pipe(gulp.dest('./spec'))


gulp.task 'jasmine-test', ->
  gulp.src ['./src/**/*.coffee', './spec/**/*.coffee']
    .pipe($.jasmineBrowser.specRunner())
    .pipe($.jasmineBrowser.server())


gulp.task 'watch', ->
  $.livereload.listen(
    quiet: on
  )

  $.watch('./src/**/*.coffee', $.batch (cb) ->
    gulp.start('coffee')
    cb()
  )
  $.watch('./spec/**/*.coffee', $.batch (cb) ->
    gulp.start('coffee-test')
    gulp.start('jasmine-test')
    cb()
  )



gulp.task 'server',  ->
  gulp.src 'app'
    .pipe($.webserver(
      port: 9011
    ))


gulp.task 'default', [
  'coffee'
  # 'coffee-test'
  # 'jasmine-test'
  'watch'
  'server'
]