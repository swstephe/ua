angular.module 'yw.planning'
.factory 'messageSrv', ->
  certMessage: (isDeep) ->
    if isDeep
      "You need an advanced diving certification."
    else
      "The depth is shallow enough to take."
