angular.module 'core'
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
