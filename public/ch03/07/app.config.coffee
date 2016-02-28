angular.module 'app'
.config [
  '$routeProvider'
  ($routeProvider) ->
    $routeProvider.when '/locations',
      templateUrl: 'locations.html'
      controller: 'locationsCtrl'
    $routeProvider.when '/sites',
      templateUrl: 'sites.html'
      controller: 'sitesCtrl'
    $routeProvider.when '/types',
      templateUrl: 'types.html'
      controller: 'typesCtrl'
    $routeProvider.otherwise
      templateUrl: 'main.html'
      controller: 'mainCtrl'
]
