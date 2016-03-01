angular.module 'token'
.controller 'diverCtrl', [
  '$scope'
  ($scope) ->
    $scope.tokensFound = 0
    $scope.found = -> $scope.tokensFound++; tokenChanged 1
    $scope.lost = -> $scope.tokensFound--; tokenChanged -1
    tokenChanged = (diff) -> $scope.$emit 'TokenChange', diff
]
