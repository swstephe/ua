angular.module 'traveling'
.directive 'logWelcome', ->
  scope: false
  priority: 100
  link: (scope, element, attrs) ->
    scope.sayHello = (greeting) -> console.log greeting
