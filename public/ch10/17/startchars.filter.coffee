angular.module 'diveLog'
.filter 'startChars', [
  '$filter'
  ($filter) ->
    (items) ->
      return items unless angular.isArray items
      sorted = $filter('orderBy')(items, 'site')
      result = []
      lastChar = ''
      for item in sorted
        firstChar = item.site.charAt(0)
        result.push firstChar if firstChar isnt lastChar
        lastChar = firstChar
      result
]
