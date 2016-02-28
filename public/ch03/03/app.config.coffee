angular.module 'app'
.config [
  '$routeProvider'
  ($routeProvider) ->
    $routeProvider.when '/locations', templateUrl: 'locations.html'
    $routeProvider.when '/sites',     templateUrl: 'sites.html'
    $routeProvider.otherwise          templateUrl: 'main.html'
]
