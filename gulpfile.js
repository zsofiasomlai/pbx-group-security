var gulp = require('gulp');
var concat = require('gulp-concat');
var uglify = require('gulp-uglify');
var minify = require('gulp-minify-css');

/* Try to keep order of .js files:
 * jquery lib
 * bootstrap lib
 * jquery.cookie
 * jquery.waypoints
 * jquery.counterup
 * jquery-parallax
 * front
 * owl.carousel
 */
gulp.task('js', function(){
   gulp.src([
	   'src/scripts/lib/jquery-3.1.1.min.js',
	   'src/scripts/lib/bootstrap-3.3.7.min.js',
	   'src/scripts/jquery.cookie.min.js',
	   'src/scripts/jquery.waypoints.min.js',
	   'src/scripts/jquery.counterup.min.js',
	   'src/scripts/jquery-parallax.js',
	   'src/scripts/front.js',
	   'src/scripts/owl.carousel.min.js',
   ])
   .pipe(concat('all.js'))
   .pipe(uglify())
   .pipe(gulp.dest('static/js/'));
});

gulp.task('css', function(){
   gulp.src([
	   'src/styles/css/lib/font-awesome.min.css',
	   'src/styles/css/lib/bootstrap.min.css',
	   'src/styles/css/animate.css',
	   'src/styles/css/style.default.css',
	   'src/styles/css/custom.css',
	   'src/styles/css/owl.carousel.css',
	   'src/styles/css/owl.theme.css',
   ])
   .pipe(concat('styles.css'))
   .pipe(minify())
   .pipe(gulp.dest('static/css/'));
});

gulp.task('default',['js','css'],function(){
});
