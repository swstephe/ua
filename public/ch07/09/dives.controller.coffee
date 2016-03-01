angular.module 'watcher'
.controller 'divesCtrl', [
  '$scope'
  ($scope) ->
    $scope.dives = dives
    canEval = false
    $scope.clone = ->
      $scope.reset()
      canEval = true
      $scope.dives = $scope.dives.slice(0)
    $scope.swapItems = ->
      $scope.reset()
      canEval = true
      temp = $scope.dives[0]
      $scope.dives[0] = $scope.dives[1]
      $scope.dives[1] = temp
    $scope.changeItemProp = ->
      $scope.reset()
      canEval = true
      $scope.dives[0].depth++
    $scope.reset = ->
      $scope.byRef = false
      $scope.byColl = false
      $scope.byVal = false
    $scope.detected = (flag) ->
      if flag then 'label-success' else 'label-danger'
    $scope.$watch 'dives', -> $scope.byRef = canEval
    $scope.$watchCollection 'dives', -> $scope.byColl = canEval
    $scope.$watch 'dives', (-> $scope.byVal = canEval), true
    $scope.reset()
]
