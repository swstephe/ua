angular.module 'diveLog'
.filter 'diveData', ->
  (value, separator) ->
    seperator = ' | ' unless angular.isDefined separator
    if angular.isDefined(value.depth) and angular.isDefined(value.time)
      "#{value.depth} feet#{separator}#{value.time} min"
    else
      value
