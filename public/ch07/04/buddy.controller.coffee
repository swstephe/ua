angular.module 'multi'
.controller 'buddyCtrl', [
  '$scope'
  ($scope) ->
    $scope.getMessage = -> "You typed: #{$scope.buddy}"
]
