angular.module 'services'
.config [
  '$provide'
  ($provide) ->
    $provide.decorator 'version', [
      '$delegate'
      ($delegate) ->
        major: $delegate.major + 1
        minor: 0
    ]
]
