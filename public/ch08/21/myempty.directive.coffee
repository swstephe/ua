angular.module 'validation'
.directive 'myEmpty', ->
  require: 'ngModel'
  restrict: 'A'
  link: (scope, element, attrs, ctrl) ->
    ctrl.$isEmpty = (value) ->
      not angular.isDefined(value) or
      value is null or
      value is '' or
      value is NaN or
      value is '='
