angular.module 'app'
.controller 'siteEditCtrl', [
  '$scope'
  ($scope) ->
    $scope.sites = sites
    setView = (view) -> $scope.view = view
    setView 'list'
]
