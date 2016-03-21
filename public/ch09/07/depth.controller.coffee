angular.module 'services'
.controller 'depthCtrl', [
  '$scope'
  'depth'
  ($scope, depth) ->
    $scope.cert = ->
      if depth.isDeep $scope.maxDepth
        "Advanced Open Water"
      else
        "Open Water"
]
