angular.module 'controls'
.directive 'myPickupList', ->
  require: 'ngModel'
  scope: {}
  controller: [
    '$scope'
    ($scope) ->
      $scope.editing = false
      $scope.startEdit = -> $scope.editing = true
      $scope.selectValue = (value) ->
        $scope.selectedValue = value
        $scope.editing = false
  ]
  templateUrl: '11a.html'
  link: (scope, element, attrs, ctrl) ->
    valueAttr = attrs['values']
    if angular.isDefined valueAttr
      scope.values = valueAttr.split ';'
    else
      scope.values = []

    ctrl.$render = -> scope.selectedValue = ctrl.$modelValue
    scope.$watch(
      (watchScope) -> watchScope.$eval 'selectedValue'
      -> ctrl.$setViewValue scope.selectedValue
    )
