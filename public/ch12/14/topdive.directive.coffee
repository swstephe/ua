angular.module 'controls'
.directive 'topDive', ->
  restrict: 'A'
  templateUrl: '14a.html'
  transclude: true
  link: (scope, element, attrs) ->
    scope.header = attrs.header
    scope.footer = attrs.footer
