angular.module 'app'
.controller 'sitesCtrl', [
  'currentSpot'
  (currentSpot) ->
    currentSpot.setCurrentSpot "Sites", "Manage the list of dive sites"
]
