angular.module 'digest'
.controller 'doubler', [
  '$scope'
  ($scope) ->
    $scope.word = ''
    $scope.doubled = -> "#{$scope.word} #{$scope.word}"
]
