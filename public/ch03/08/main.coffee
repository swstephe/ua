angular.module 'main', ['ngRoute', 'core', 'maintenance']

.controller 'adminCtrl', [
  '$scope'
  'currentSpot'
  ($scope, currentSpot) ->
    $scope.isActive = (menuId) -> currentSpot.getActiveMenu() == menuId
    $scope.getTitle = -> currentSpot.getTitle()
    $scope.getActiveMenu = -> currentSpot.getActiveMenu()
]

.controller 'mainCtrl', [
  'currentSpot'
  (currentSpot) ->
]

.config [
  '$routeProvider'
  ($routeProvider) ->
    $routeProvider.when '/locations',
      templateUrl: 'locations.html'
      controller: 'locationsCtrl'
    $routeProvider.when '/sites',
      templateUrl: 'sites.html'
      controller: 'sitesCtrl'
    $routeProvider.when '/types',
      templateUrl: 'types.html'
      controller: 'typesCtrl'
    $routeProvider.otherwise
      templateUrl: 'main.html'
      controller: 'mainCtrl'
]
