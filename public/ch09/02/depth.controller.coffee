angular.module 'services'
.controller 'depthCtrl', [
  '$scope'
  'isDeepFunc'
  ($scope, isDeepFunc) ->
    $scope.cert = ->
      if isDeepFunc($scope.maxDepth)
        "Advacned Open Water"
      else
        "Open Water"
]
