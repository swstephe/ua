angular.module 'traveling'
.directive 'logWelcome', ->
  scope: false
  link: (scope, element, attrs) ->
    scope.sayHello = (greeting) -> console.log greeting
