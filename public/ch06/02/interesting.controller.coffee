angular.module 'yw.interesting'
.controller 'interestingCtrl', [
  '$scope'
  ($scope) ->
    $scope.locations = [
      "Egypt"
      "Cyprus"
      "Cuba"
      "Hungary"
    ]
    $scope.selectedLoc = $scope.locations[0]
]
