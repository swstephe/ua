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
      for location in locations
        return i if location.id == id
      -1

    defer = (time, operation) ->
      deferred = $q.defer()
      setTimeout( ->
        result = operation()
        deferred.resolve result
      , time)
      deferred.promise

    {
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
    }
]

.controller 'locationsCtrl', [
  '$scope'
  'locationsApi'
  ($scope, locationsApi) ->
    selectedId = -1
    addFlag = false
    editFlag = false
    removeFlag = false
    rings = []

    $scope.model = {}
    $scope.isBusy = isBusy = (id) ->
      if angular.isDefined(id)
        rings.indexOf(id) >= 0
      else
        rings.length > 0
    $scope.isLoading = isLoading = -> isBusy -2
    $scope.startAdd = startAdd = ->
      reset()
      selectedId = -1
      addFlag = true
      $scope.model.locationBox = ''
    $scope.startEdit = startEdit = (id) ->
      reset()
      selectedId = id
      editFlag = true
      item = null
      locationsApi.getLocationById(id)
        .then (data) ->
          item = data
          $scope.model.locationBox = item.displayName
    $scope.startRemove = startRemove = (id) ->
      reset()
      selectedId = id
      removeFlag = true
    $scope.cancel = reset = ->
      selectedId = -1
      addFlag = false
      editFlag = false
      removeFlag = false
    $scope.isInReadMode = isInReadMode = (id) ->
      selectedId < 0 or selectedId != id
    $scope.isInAddMode = isInAddMode = -> addFlag
    $scope.isInEditMode = isInEditMode = (id) ->
      selectedId == id and editFlag
    $scope.isInRemoveMode = isInRemoveMode = (id) ->
      selectedId == id and removeFlag
    $scope.add = add = ->
      useBackend -1, ->
        locationsApi.addLocation
          id: 0
          displayName: $scope.model.locationBox
    $scope.save = save = ->
      useBackend selectedId, ->
        locationsApi.updateLocation
          id: selectedId
          displayName: $scope.model.locationBox
    $scope.remove = remove = (id) ->
      useBackend id, -> locationsApi.removeLocation id

    busy = (id) -> rings.push id unless isBusy id
    complete = (id) ->
      idx = rings.indexOf id
      rings.splice idx, 1 unless idx < 0
    refresh = ->
      busy -2
      locationsApi.getLocations()
        .then (data) ->
          $scope.locations = data
          complete -2
      reset()
    useBackend = (id, operation) ->
      busy id
      operation().then (data) ->
        refresh()
        complete id

    refresh()
]
