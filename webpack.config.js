/*jshint esnext:true */
/* globals require, __dirname, module */

const
    path = require('path');


const config = {
  entry: './scripts/todo_entry.js', /* entry point*/
  output: {
    path: path.resolve(__dirname, '../path'), /* destination path */
    filename: 'todo_target.bundle.js' /* entry point*/
  },
  watch : true,
  module : {
    rules : [
    {
      test : /\.js$/,
      include : path.resolve(__dirname, 'todo_scripts'), /* source folder */
      use : [{
        loader: 'babel-loader',
        options : {
          presets : [
            ['es2015', { modules : false }]
          ]
        }
      }]
    }
    
    
    ]
  }
};

module.exports = config;
