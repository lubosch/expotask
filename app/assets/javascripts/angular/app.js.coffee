@app = angular.module('expotask', [
  'templates',
  'rails',
  'ui.router',
  'ui.bootstrap'
  'templates',
  'ngVis',
  'chart.js',
  'Tek.progressBar'
])

# for compatibility with Rails CSRF protection

@app.config([
  '$httpProvider', 'ChartJsProvider', ($httpProvider, ChartJsProvider)->
    $httpProvider.defaults.headers.common['X-CSRF-Token'] = $('meta[name=csrf-token]').attr('content')
    $httpProvider.defaults.withCredentials = true;

    ChartJsProvider.setOptions({
      legend: {display: false}
    });

])
