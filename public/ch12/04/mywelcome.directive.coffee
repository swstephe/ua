angular.module 'traveling'
.directive 'myWelcome', ->
  scope: true
  priority: 100
  link: (scope, element, attrs) ->
    scope.sayHello = (greeting) -> scope.greeting = greeting
