angular.module 'diveLog'
.filter 'startWith', ->
  (items, startChar) ->
    return items unless angular.isArray items
    (item for item in items \
      when startChar is '' or item.site.charAt(0) is startChar
    )
