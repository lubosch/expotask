angular.module('expotask').service('ActualStatus', [
  'railsResourceFactory',
  (railsResourceFactory) ->
    return railsResourceFactory({
      url: '/api/dashboards/actual_status',
      name: 'actualStatus'
    });

])
