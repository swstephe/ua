angular.module 'token'
.controller 'tokenGoalCtrl', [
  '$scope'
  'initialGoal'
  ($scope, initialGoal) ->
    $scope.divers = ["Bob", "Cecile", "Jake"]
    $scope.tokens = initialGoal
    $scope.increment = -> $scope.tokens++
    $scope.decrement = -> $scope.tokens--
]
