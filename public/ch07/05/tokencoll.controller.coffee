angular.module 'token'
.controller 'tokenCollCtrl', [
  '$scope'
  'initialGoal'
  ($scope, initialGoal) ->
    $scope.toGet = initialGoal
    $scope.collected = 0
    $scope.hasEnough = -> $scope.toGet <= $scope.collected
]
