angular.module 'services'
.controller 'statsCtrl', [
  '$scope'
  'diveNum'
  'hours'
  ($scope, diveNum, hours) ->
    $scope.diveNum = diveNum
    $scope.hours = hours
    $scope.avgTime = hours / diveNum*60
]
