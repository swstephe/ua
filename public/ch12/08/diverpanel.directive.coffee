angular.module 'token'
.directive 'diverPanel', [
  '$templateCache'
  ($templateCache) ->
    scope:
      diver: '@diverName'
      sign: '&change'
    templateUrl: '../diverPanel.html'
    link: (scope, element, attrs) ->
      scope.tokensFound = 0
      scope.diver = attrs['diverName']
      scope.found = ->
        scope.tokensFound++
        scope.sign {found: 1}
      scope.lost = ->
        scope.tokensFound--
        scope.sign {found: -1}
]
