angular.module 'yw.planning'
.controller 'planCtrl', [
  '$scope'
  'plannerSrv'
  'messageSrv'
  ($scope, plannerSrv, messageSrv) ->
    $scope.maxDepth = 30
    $scope.needAdvancedCert = -> plannerSrv.isDeep $scope.maxDepth
    $scope.message = ->
      messageSrv.certMessage plannerSrv.isDeep $scope.maxDepth
]
