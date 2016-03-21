angular.module 'services'
.provider 'depth', ->
  depthLimit = 120
  setDepthLimit: (limit) -> depthLimit = limit
  $get: ->
    toMeters: (feet) -> feet / 3.28
    toFeet: (meters) -> meters * 3.28
    isDeep: (depthInFeet) -> depthInFeet > 120
