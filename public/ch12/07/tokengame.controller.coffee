angular.module 'token'
.controller 'tokenGameCtrl', [
  '$scope'
  'initialGoal'
  ($scope, initialGoal) ->
    $scope.divers = ["Bob", "Cecile", "Jake"]
    $scope.toCollect = initialGoal
    $scope.collected = 0
    $scope.hasEnough = -> $scope.toCollect <= $scope.collected
]
