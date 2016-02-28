angular.module 'app'
.factory 'diveLogApi', [
  '$http'
  ($http) ->
    getDives: ->
      $http.get 'dives.json'
      .then (response) -> response.data
]
