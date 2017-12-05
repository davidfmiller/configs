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

        use: [
/*          {
            test: /\.js$/,
            include: path.resolve(__dirname, 'src'),
            use: [{
              loader: 'babel-loader',
              options: {
                presets: ['es2015'],
              }
            }]
          }
*/
        ]
      }
    ]
  }
};

module.exports = config;
