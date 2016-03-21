angular.module 'validation'
.directive 'domain', [
  '$q'
  ($q) ->
    require: 'ngModel'
    restrict: 'A'
    link: (scope, element, attrs, ctrl) ->
      ctrl.$asyncValidators.domain = (value) ->
        defer = $q.defer()
        if ctrl.$isEmpty value
          defer.resolve()
        else
          element.addClass 'checking'
          setTimeout(->
            if value.length > 0 and value.toUpperCase().charAt(0) == 'M'
              defer.resolve()
              element.removeClass 'checking'
            else
              defer.reject()
              element.removeClass 'checking'
          , 2000)
        defer.promise
]
