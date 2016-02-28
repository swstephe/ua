angular.module 'app'
.controller 'diveLogCtrl', [
  '$scope'
  'diveLogApi'
  ($scope, diveLogApi) ->
    $scope.dives = []
    loading = false
    $scope.isLoading = -> loading
    $scope.refreshDives = ->
      console.log "refreshing"
      loading = true
      $scope.dives = []
      setTimeout(->
        $scope.dives = diveLogApi.getDives()
        loading = false
        $scope.$apply()
      , 1000)
]
