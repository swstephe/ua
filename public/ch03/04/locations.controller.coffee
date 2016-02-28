angular.module 'app'
.controller 'locationsCtrl', [
  'currentSpot'
  (currentSpot) ->
    currentSpot.setCurrentSpot(
      "Locations"
      "Manage the list of diving locations"
    )
]
