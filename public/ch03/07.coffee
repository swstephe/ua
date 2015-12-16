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
      currentSpot.setCurrentSpot activeMenuId, activeTitle
]

.directive 'ywMenuId', [
  'currentSpot'
  (currentSpot) ->
    menuElements = []
    setActive = (element, menuId) ->
      if currentSpot.getActiveMenu() == menuId
        element.addClass 'active'
      else
        element.removeClass 'active'
    (scope, element, attrs) ->
      menuId = attrs['ywMenuId']
      menuElements.push {id: menuId, node: element}
      watcherFn = (watchScope) -> watchScope.$eval 'getActiveMenu()'
      scope.$watch watcherFn, (newValue, oldValue) ->
        for menuElement in menuElements
          setActive menuElement.node, menuElement.id
]

.controller 'adminCtrl', [
  '$scope'
  'currentSpot'
  ($scope, currentSpot) ->
    $scope.isActive = (menuId) -> currentSpot.getActiveMenu() == menuId
    $scope.getTitle = -> currentSpot.getTitle()
    $scope.getActiveMenu = -> currentSpot.getActiveMenu()
]

.controller 'mainCtrl', [->]
.controller 'locationsCtrl', [->]
.controller 'sitesCtrl', [->]
.controller 'typesCtrl', [->]

.config [
  '$routeProvider'
  ($routeProvider) ->
    $routeProvider.when '/locations',
      templateUrl: '07b.html'
      controller: 'locationsCtrl'
    $routeProvider.when '/sites',
      templateUrl: '07c.html'
      controller: 'sitesCtrl'
    $routeProvider.when '/types',
      templateUrl: '07d.html'
      controller: 'typesCtrl'
    $routeProvider.otherwise
      templateUrl: '07a.html'
      controller: 'mainCtrl'
]
