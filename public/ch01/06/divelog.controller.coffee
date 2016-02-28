angular.module 'app'
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    index = 0
    $scope.dives = []
    $scope.addDive = ->
      $scope.dives.push dives[index++] if $scope.enableAdd()
    $scope.clearDives = ->
      $scope.dives = []
      index = 0
    $scope.enableAdd = -> index < dives.length
]
