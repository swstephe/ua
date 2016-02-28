angular.module 'maintenance'
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
