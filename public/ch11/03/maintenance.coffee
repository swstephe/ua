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
  getTitle: -> titleText
.directive 'ywActiveMenu', [
  'currentSpot',
  (currentSpot) ->
    restrict: 'C'
    link: (scope, element, attrs, controller) ->
      activeMenuId = attrs['ywActiveMenu']
      activeTitle = attrs['ywActiveTitle']
      currentSpot.setCurrentSpot(activeMenuId, activeTitle)
]
.directive 'ywActiveTitle', ->
  restrict: 'C'
  link: angular.noop
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
