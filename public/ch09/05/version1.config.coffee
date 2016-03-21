angular.module 'services'
.config [
  '$provide'
  ($provide) ->
    $provide.decorator 'version', -> {major: 2, minor: 0}
]
