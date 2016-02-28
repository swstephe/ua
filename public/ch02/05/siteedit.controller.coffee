angular.module 'app'
.controller 'siteEditCtrl', [
  '$scope'
  ($scope) ->
    selected = -1
    $scope.sites = sites
    $scope.view = 'list'
    $scope.startAdd = ->
      $scope.siteBox = ''
      $scope.view = 'add'
    $scope.cancel = -> $scope.view = 'list'
    $scope.add = ->
      $scope.sites.push($scope.siteBox)
      $scope.view = 'list'
    $scope.startEdit = (index) ->
      selected = index
      $scope.siteBox = $scope.sites[index]
      $scope.view = 'edit'
    $scope.startRemove = (index) ->
      selected = index
      $scope.view = 'delete'
    $scope.remove = ->
      $scope.sites.splice selected, 1
      $scope.view = 'list'
    $scope.save = ->
      $scope.sites[selected] = $scope.siteBox
      $scope.view = 'list'
    $scope.getSelected = -> sites[selected]
]
