angular.module 'diveLog', []
.factory 'diveLogApi', [
  '$http'
  ($http) ->
    getDives: ->
      $http.get('dives.json')
      .then (response) -> response.data
]

.controller 'diveLogCtrl', [
  '$scope'
  'diveLogApi'
  ($scope, diveLogApi) ->
    $scope.dives = []
    $scope.errorMessage = ''
    loading = false
    $scope.isLoading = -> loading
    $scope.refreshDives = ->
      loading = true
      $scope.dives = []
      $scope.errorMessage = ''
      diveLogApi.getDives()
      .then(
        (data) ->
          $scope.dives = data
          loading = false
        ,
        (reason) ->
          $scope.errorMessage = reason
          loading = false
      )
]
