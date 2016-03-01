angular.module 'token'
.controller 'tokenCollCtrl', [
  '$scope'
  'initialGoal'
  ($scope, initialGoal) ->
    $scope.toGet = initialGoal
    $scope.collected = 0
    $scope.hasEnough = -> $scope.toGet <= $scope.collected
    $scope.$on 'NewGoal', (event, newGoal) -> $scope.toGet = newGoal
    $scope.$on 'TokenChange', (event, diff) -> $scope.collected += diff
]
