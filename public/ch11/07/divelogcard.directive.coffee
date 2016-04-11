angular.module 'diveLog'
.directive 'diveLogCard', [
  '$templateCache'
  ($templateCache) ->
    restrict: 'E'
    template: -> $templateCache.get 'cardTmpl'
]
