angular.module 'diveLog'
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    $scope.dives = dives
    $scope.avgTime = ->
      return 0.0 if dives.length is 0
      sum = dives.reduce ((s, dive) -> s += dive.time), 0.0
      sum / dives.length
    $scope.avgDepth = ->
      return 0.0 if dives.length is 0
      sum = dives.reduce ((s, dive) -> s += dive.depth), 0.0
      sum / dives.length
]
