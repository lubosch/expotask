angular.module('expotask').service('CustomerJourney', [
  'railsResourceFactory',
  (railsResourceFactory) ->
    return railsResourceFactory({
      url: '/api/dashboards/customer_journey',
      name: 'customerJourney'
    });

])
