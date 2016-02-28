angular.module 'maintenance'
.factory 'locationsApi', [
  '$q'
  ($q) ->
    locations = defaultLocations = [
      { id: 1, displayName: "Hurghada, Egypt" }
      { id: 2, displayName: "Ecsed, Hungary" }
      { id: 3, displayName: "Maehbourg, Mauritius" }
    ]

    getLocationIndexById = (id) ->
      for i,location in locations
        return i if location.id == id
      -1

    defer = (time, operation) ->
      deferred = $q.defer()
      setTimeout( ->
        result = operation()
        deferred.resolve result
      , time)
      deferred.promise

    getLocations: -> defer(100, -> locations.slice(0))
    getLocationById: (id) ->
      defer 10, ->
        itemId = getLocationIndexById id
        if itemId >= 0 then locations[itemId] else null
    addLocation: (location) ->
      defer 1000, ->
        newId = locations.length + 1
        location.id = newId
        locations.push location
    removeLocation: (id) ->
      defer 1000, ->
        itemId = getLocationIndexById id
        if itemId >= 0 then locations.splice itemId, 1
    updateLocation: (location) ->
      defer 1000, ->
        itemId = getLocationIndexById location.id
        if itemId >= 0
          locations[itemId] = location
]
