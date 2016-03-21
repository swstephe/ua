angular.module 'diveLog'
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    $scope.limitValue = 100
    $scope.dives = dives
]
