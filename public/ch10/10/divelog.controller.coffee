angular.module 'diveLog'
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    $scope.dives = dives
    $scope.search = (value, index) ->
      console.log "value #{value.site}:index #{index}"
      value.site.indexOf($scope.searchKey) is 0
]
