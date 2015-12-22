angular.module 'diveLog', []
.factory 'diveLogApi', [
  '$q'
  ($q) ->
    dives = [{
      site: "Abu Gotta Ramada"
      location: "Hurghada, Egypt"
      depth: 72
      time: 54
    },{
      site: "Ponte Mahoon"
      location: "Maehbourg, Mauritius"
      depth: 54
      time: 38
    },{
      site: "Molnar Cave"
      location: "Budapest, Hungary"
      depth: 98
      time: 62
    }]
    counter = 0
    getDives: ->
      deferred = $q.defer()
      counter++
      setTimeout ->
        if counter%3 == 0
          deferred.reject "Error: Call counter is #{counter}"
        else
          deferred.resolve(dives)
      , 1000
      deferred.promise
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
