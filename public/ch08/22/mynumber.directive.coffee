angular.module 'validation'
.directive 'myNumber', ->
  require: 'ngModel'
  restrict: 'A'
  link: (scope, element, attrs, ctrl) ->
    ctrl.$validators.number = (value) ->
      ctrl.$isEmpty(value) or
      (angular.isNumber(value) and value >= 0.0)
