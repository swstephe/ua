angular.module 'yw.interesting'
.controller 'interestingCtrl', [
  '$scope'
  ($scope) ->
    $scope.locations = locations
    $scope.selectedLoc = $scope.locations[0]
]
