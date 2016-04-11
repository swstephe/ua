angular.module 'controls'
.directive 'mySwitchControl', ->
  require: ['ngModel', '^form']
  scope: {}
  link: (scope, element, attrs, ctrls) ->
    ctrl = ctrls[0]
    formCtrl = ctrls[1]
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
    if angular.isDefined(formCtrl)
      if angular.isDefined(formCtrl.switchCount)
        formCtrl.switchCount++
      else
        formCtrl.switchCount = 1
