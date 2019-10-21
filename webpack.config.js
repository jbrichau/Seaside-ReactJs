const webpack = require('webpack');
const path = require('path');

module.exports = {
  devtool: 'eval-source-map',
  entry: {
    vendor: [ 'react', 'react-dom' ],
    app: path.join(__dirname, '/app/main.js')
  },
  output: {
    library: 'SeasideWithReact',
    path: path.join(__dirname, '/public'),
    filename: 'app.js'
  },
  plugins: [
    new webpack.optimize.CommonsChunkPlugin({ name: 'vendor', filename: 'vendor.js' })
  ],
  module: {
    loaders: [
      {
        test: /\.js$/,
        exclude: /node_modules/,
        loader: 'babel-loader',
        options: {
          presets: [ 'es2015', 'react' ]
        }
      }
    ]
  }
};
