angular.module 'app'
.controller 'adminCtrl', [
  '$scope'
  ($scope) ->
    $scope.activeMenu = ''
    $scope.isActive = (menuId) -> $scope.activeMenu == menuId
    $scope.setView = (view, menuId) ->
      $scope.view = view
      $scope.activeMenu = menuId
    $scope.showMain = -> $scope.setView 'main', ''
    $scope.showLocations = -> $scope.setView 'locations', 'Locations'
    $scope.showDiveSites = -> $scope.setView 'diveSites', 'Sites'
    $scope.showMain()
]
