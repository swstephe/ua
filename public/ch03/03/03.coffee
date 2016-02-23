angular.module 'maintenance', ['ngRoute']
.controller 'adminCtrl', ['$scope', ($scope) ->]
.config [
  '$routeProvider'
  ($routeProvider) ->
    $routeProvider.when '/locations', templateUrl: 'locations.html'
    $routeProvider.when '/sites',     templateUrl: 'sites.html'
    $routeProvider.otherwise          templateUrl: 'main.html'
]
