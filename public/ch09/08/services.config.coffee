angular.module 'services'
.config [
  '$provide'
  ($provide) ->
    $provide.decorator 'depth', [
      '$delegate'
      ($delegate) ->
        isDeepFn = $delegate.isDeep
        $delegate.isDeep = (depthInFeet) ->
          console.log "isDeep entered. (#{depthInFeet})"
          result = isDeepFn depthInFeet
          console.log "isDeep exited. (#{result})"
          result
        $delegate
    ]
]
