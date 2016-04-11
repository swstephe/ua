angular.module 'token'
.controller 'tokenGameCtrl', [
  '$scope'
  'initialGoal'
  ($scope, initialGoal) ->
    $scope.divers = ["Bob", "Cecile", "Jake"]
    $scope.toCollect = initialGoal
    $scope.collected = 0
    $scope.tokens = []
    $scope.change = (found) ->
      $scope.collected += found
      $scope.tokens.push found
    $scope.hasEnough = -> $scope.toCollect <= $scope.collected
]
