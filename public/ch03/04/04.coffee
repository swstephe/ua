angular.module 'maintenance', ['ngRoute']

.factory 'currentSpot', ->
  activeMenuId = ''
  titleText = ''
  {
    setCurrentSpot: (menuId, title) ->
      activeMenuId = menuId
      titleText = title
    getActiveMenu: -> activeMenuId
    getTitle: -> titleText
  }

.controller 'adminCtrl', [
  '$scope'
  'currentSpot'
  ($scope, currentSpot) ->
    $scope.isActive = (menuId) -> currentSpot.getActiveMenu() == menuId
    $scope.getTitle = -> currentSpot.getTitle()
]

.controller 'mainCtrl', [
  'currentSpot'
  (currentSpot) -> currentSpot.setCurrentSpot '', ''
]

.controller 'locationsCtrl', [
  'currentSpot'
  (currentSpot) ->
    currentSpot.setCurrentSpot(
      "Locations"
      "Manage the list of diving locations"
    )
]

.controller 'sitesCtrl', [
  'currentSpot'
  (currentSpot) ->
    currentSpot.setCurrentSpot(
      "Sites"
      "Manage the list of dive sites"
    )
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
    $routeProvider.otherwise
      templateUrl: 'main.html'
      controller: 'mainCtrl'
]
