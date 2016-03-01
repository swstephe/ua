angular.module 'scopes'
.controller 'buddiesCtrl', [
  '$scope'
  ($scope) -> $scope.buddies = buddies
]
