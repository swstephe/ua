angular.module 'app'
.factory 'diveLogApi', [
  '$q'
  ($q) ->
    counter = 0
    getDives: ->
      deferred = $q.defer()
      counter++
      setTimeout ->
        if counter%3 == 0
          deferred.reject "Error: Call counter is #{counter}"
        else
          deferred.resolve dives
      , 1000
      deferred.promise
]
