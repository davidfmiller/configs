const
path = require('path');
// webpack = require('webpack');

const config = {
  entry: './scripts/todo_entry.js', /* entry point*/
  output: {
    path: path.resolve(__dirname, '../path'), /* destination path */
    filename: 'todo_target.bundle.js' /* entry point*/
  },
  watch: true,
/*
  plugins : [
    new webpack.optimize.UglifyJsPlugin({
      compress: { warnings: false }
    })
  ],
*/
  module: {
    rules: [
      {
        test: /\.js$/,
        include: path.resolve(__dirname, 'todo_scripts'), /* source folder */
        use: [{
          loader: 'babel-loader',
          options: {
            presets: [

            ]
          }
        }]
      }
    ]
  }
};

module.exports = config;
