angular.module 'app'
.directive 'ywActiveMenu', [
  'currentSpot'
  (currentSpot) ->
    (scope, element, attrs) ->
      activeMenuId = attrs['ywActiveMenu']
      activeTitle = attrs['ywActiveTitle']
      currentSpot.setCurrentSpot activeMenuId, activeTitle
]
