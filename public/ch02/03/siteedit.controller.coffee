angular.module 'app'
.controller 'siteEditCtrl', [
  '$scope'
  ($scope) ->
    $scope.sites = sites
    $scope.setView = (view) -> $scope.view = view
    $scope.startAdd = ->
      $scope.siteBox = ''
      $scope.setView 'add'
    $scope.cancel = -> $scope.setView 'list'
    $scope.add = ->
      $scope.sites.push $scope.siteBox
      $scope.setView 'list'
    $scope.setView 'list'
]
