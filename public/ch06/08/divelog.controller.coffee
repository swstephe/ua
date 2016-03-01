angular.module 'diveLog'
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    $scope.dives = dives
    $scope.options = options
    $scope.selection = 'sm'
    $scope.isSmall = -> $scope.selection.indexOf('sm') >= 0
    $scope.isBig = -> $scope.selection.indexOf('bg') >= 0
    $scope.isBlue = -> $scope.selection.indexOf('bl') >= 0
    $scope.isRed = -> $scope.selection.indexOf('rd') >= 0
]
