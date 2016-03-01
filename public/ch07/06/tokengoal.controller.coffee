angular.module 'token'
.controller 'tokenGoalCtrl', [
  '$scope'
  'initialGoal'
  ($scope, initialGoal) ->
    $scope.divers = ["Bob", "Cecile", "Jake"]
    $scope.tokens = initialGoal
    $scope.increment = -> $scope.tokens++; goalChanged()
    $scope.decrement = -> $scope.tokens--; goalChanged()
    goalChanged = -> $scope.$broadcast 'NewGoal', $scope.tokens
]
