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

.directive 'ywActiveMenu', [
  'currentSpot'
  (currentSpot) ->
    (scope, element, attrs) ->
      activeMenuId = attrs['ywActiveMenu']
      activeTitle = attrs['ywActiveTitle']
      currentSpot.setCurrentSpot activeMenuId, activetitle
]

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
      templateUrl: '05b.html'
      controller: 'locationsCtrl'
    $routeProvider.when '/sites',
      templateUrl: '05c.html'
      controller: 'sitesCtrl'
    $routeProvider.otherwise
      templateUrl: '05a.html'
      controller: 'mainCtrl'
]
