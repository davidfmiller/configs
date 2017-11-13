/*jshint esnext:true */
/* globals module */

module.exports = function(grunt) {

  'use strict';

  grunt.initConfig({

    pkg: grunt.file.readJSON('package.json'),
/*
    uglify: {
      js: {
        options: {
          mangle: true
        },
        files: {
          'site/assets/js/entry.js' : ['path/to/files/file.js']
        }
      }
    },*/

    compass : {
      dist : {
        options : {
          sassDir : 'scss', /* scss */
          cssDir : '../css/', /* path to generated css */
          environment : 'production',
          outputStyle : 'compressed'
        }
      }
    },

    watch : {
      css : {
        files : ['scss/*.scss'],
        tasks : ['compass']
      }
    }
  });

  grunt.loadNpmTasks('grunt-contrib-uglify');
  grunt.loadNpmTasks('grunt-contrib-compass');
  grunt.loadNpmTasks('grunt-contrib-jshint');
  grunt.loadNpmTasks('grunt-contrib-watch');

  grunt.registerTask('default', ['compass']);
};
