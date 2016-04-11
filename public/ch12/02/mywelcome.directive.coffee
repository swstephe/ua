angular.module 'traveling'
.directive 'myWelcome', ->
  scope: true
  link: (scope, element, attrs) ->
    scope.sayHello = (greeting) -> scope.greeting = greeting
