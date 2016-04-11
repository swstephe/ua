angular.module 'traveling'
.directive 'myWelcome', ->
  scope: false
  link: (scope, element, attrs) ->
    scope.sayHello = (greeting) -> scope.greeting = greeting
