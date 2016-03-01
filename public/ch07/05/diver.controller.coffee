angular.module 'token'
.controller 'diverCtrl', [
  '$scope'
  ($scope) ->
    $scope.tokensFound = 0
    $scope.found = -> $scope.tokensFound++
    $scope.lost = -> $scope.tokensFound--
]
