angular.module 'controls'
.directive 'mySwitchControl', ->
  require: 'ngModel'
  scope: {}
  link: (scope, element, attrs, ctrl) ->
    element.on 'click', ->
      scope.stateValue = not scope.stateValue
      scope.$apply (-> ctrl.$setViewValue scope.stateValue)
      ctrl.$render()
    ctrl.$render = ->
      if scope.stateValue
        element.removeClass 'no'
        element.addClass 'yes'
        element.text "Yes"
      else
        element.removeClass 'yes'
        element.addClass 'no'
        element.text "No"
    scope.stateValue = false
    element.addClass 'switch'
    ctrl.$setViewValue scope.stateValue
    ctrl.$render()
