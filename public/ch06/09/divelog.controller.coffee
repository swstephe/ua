angular.module 'diveLog'
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    $scope.dives = dives
    $scope.options = options
    $scope.selection = 'sm'
    $scope.size = ->
      if $scope.selection.indexOf('sm') >= 0 then 'col-sm-4' else 'col-sm-6'
    $scope.color = ->
      return "blue" if $scope.selection.indexOf('bl') >= 0
      return "red" if $scope.selection.indexOf('rd') >= 0
]
