angular.module('expotask').controller("DashboardCtrl", [
  '$scope', 'CustomerJourney', 'ActualStatus',
  ($scope, CustomerJourney, ActualStatus)->
    ActualStatus.query(from: new Date(), until: new Date()).then (actualStatus) ->
      $scope.ipsumMetric = actualStatus.ipsumMetric
      $scope.infinarioValuation = actualStatus.infinarioValuation
      $scope.blogVisits = actualStatus.blogVisits
      $scope.hpVisits = actualStatus.hpVisits


    CustomerJourney.query().then (journeyData)->
      $scope.customerJourney = journeyData


    $scope.labels = ["Download Sales", "In-Store Sales", "Mail-Order Sales", "Tele Sales", "Corporate Sales"];
    $scope.data = [300, 500, 100, 40, 120];
    $scope.progressVal = 40;

])
