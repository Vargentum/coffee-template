gulp = require 'gulp'
$ = require('gulp-load-plugins')()
coffeeLintStylish = require 'coffeelint-stylish'


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




gulp.task 'watch', ->
  $.livereload.listen(
    quiet: on
  )

  $.watch('./src/**/*.coffee', $.batch (cb) ->
    gulp.start('coffee')
    cb()
  )



gulp.task 'server',  ->
  gulp.src 'app'
    .pipe($.webserver(
      port: 9011
      # livereload: on
    ))


gulp.task 'default', [
  'coffee'
  'watch'
  'server'
]