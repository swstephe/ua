angular
.module 'maintenance', ['ngRoute']
.controller 'adminCtrl', [
  '$scope'
  'currentSpot'
  ($scope, currentSpot) ->
    $scope.isActive = (menuId) -> currentSpot.getActiveMenu() == menuId
    $scope.getTitle = -> currentSpot.getTitle()
    $scope.getActiveMenu = -> currentSpot.getActiveMenu()
]
.controller 'mainCtrl', -> true
.controller 'locationsCtrl', -> true
.controller 'sitesCtrl', -> true
.factory 'currentSpot', ->
  activeMenuId = ''
  titleText = ''
  setCurrentSpot: (menuId, title) ->
    activeMenuId = menuId or ''
    titleText = title or ''
  getActiveMenu: -> activeMenuId
  setActiveMenu: (menuId) -> activeMenuId = menuId or ''
  getTitle: -> titleText
  setTitle: (title) -> titleText = title or ''
.directive 'ywActiveMenu', [
  'currentSpot'
  (currentSpot) ->
    restrict: 'M'
    link: (scope, element, attrs, controller) ->
      activeMenuId = attrs['ywActiveMenu']
      currentSpot.setActiveMenu activeMenuId
]
.directive 'ywActiveTitle', [
  'currentSpot'
  (currentSpot) ->
    restrict: 'M'
    link: (scope, element, attrs, controller) ->
      activeTitle = attrs['ywActiveTitle']
      currentSpot.setTitle  activeTitle
]
.directive 'ywCurrentSpot', ->
  restrict: 'A'
  templateUrl: 'templates/currentSpot.html'
.config [
  '$routeProvider'
  ($routeProvider) ->
    $routeProvider.when '/locations', {
      templateUrl: 'views/locations.html'
      controller: 'locationsCtrl'
    }
    $routeProvider.when '/sites', {
      templateUrl: 'views/sites.html'
      controller: 'sitesCtrl'
    }
    $routeProvider.otherwise {
      templateUrl: 'views/main.html'
      controller: 'mainCtrl'
    }
]
