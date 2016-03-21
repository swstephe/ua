angular.module 'services'
.service 'depth', ->
  @toMeters = (feet) -> feet/3.28
  @toFeet = (meters) -> meters*3.28
  @isDeep = (depthInFeet) -> depthInFeet > 120
  true
