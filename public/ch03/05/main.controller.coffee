angular.module 'app'
.controller 'mainCtrl', [
  'currentSpot'
  (currentSpot) -> currentSpot.setCurrentSpot '', ''
]
