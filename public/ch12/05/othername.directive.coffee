angular.module 'fish'
.directive 'otherName', [
  '$templateCache'
  ($templateCache) ->
    scope:
      fishName: '@origName'
    template: -> $templateCache.get 'otherName'
    link: (scope, element, attrs) ->
      scope.language = attrs['language']
      scope.reveal = -> scope.fishName = attrs['realName']
]
