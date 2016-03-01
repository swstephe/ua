angular.module 'root'
.controller 'simpleCtrl', [
  '$scope'
  '$rootScope'
  ($scope, $rootScope) -> $scope.answer = $rootScope.evidence
]
