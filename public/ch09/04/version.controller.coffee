angular.module 'services'
.controller 'versionCtrl', [
  '$scope'
  'version'
  ($scope, version) ->
    $scope.getVersion = -> version.major + "." + version.minor
    $scope.incMinor = -> version.minor++
]
