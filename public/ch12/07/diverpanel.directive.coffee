angular.module 'token'
.directive 'diverPanel', ->
  scope:
    diver: '@diverName'
    allFound: '=counter'
  templateUrl: '../diverPanel.html'
  link: (scope, element, attrs) ->
    scope.tokensFound = 0
    scope.diver = attrs['diverName']
    scope.found = ->
      scope.tokensFound++
      scope.allFound++
    scope.lost = ->
      scope.tokensFound--
      scope.allFound--
