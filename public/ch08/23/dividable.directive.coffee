angular.module 'validation'
.directive 'dividable', ->
  require: 'ngModel'
  restrict: 'A'
  link: (scope, element, attrs, ctrl) ->
    expr = attrs['dividable']
    divider = scope.$eval expr
    ctrl.$validators.dividable = (value) ->
      ctrl.$isEmpty(value) or
      angular.isNumber(value) and
      value % divider == 0
