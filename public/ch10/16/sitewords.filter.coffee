angular.module 'diveLog'
.filter 'siteWords', ->
  (value, wordCount) ->
    return value unless angular.isArray value
    (val for val in value \
      when angular.isDefined(val.site) and
        val.site.split(' ').length is wordCount)
