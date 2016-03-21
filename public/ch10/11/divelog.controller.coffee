angular.module 'diveLog'
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    $scope.dives = dives
    $scope.comparer = (actual, expected) ->
      angular.isDefined(expected) and
      angular.isDefined(actual) and
      actual.toString().indexOf(expected) is 0
]
