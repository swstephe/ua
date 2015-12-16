angular.module 'maintenance', ['ngRoute']
.controller 'adminCtrl', ['$scope', ($scope) ->]
.config [
  '$routeProvider'
  ($routeProvider) ->
    $routeProvider.when '/locations', templateUrl: '03b.html'
    $routeProvider.when '/sites',     templateUrl: '03c.html'
    $routeProvider.otherwise          templateUrl: '03a.html'
]
