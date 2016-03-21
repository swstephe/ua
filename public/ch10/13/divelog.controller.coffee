angular.module 'diveLog'
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    $scope.dives = dives
    $scope.avgSpeed = (item) ->
      if item.time is 0 then 0 else item.depth / item.time
]
