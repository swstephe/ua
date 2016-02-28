angular.module 'app'
.controller 'diveLogCtrl', [
  '$scope'
  'diveLogApi'
  ($scope, diveLogApi) -> $scope.dives = diveLogApi.getDives()
]
