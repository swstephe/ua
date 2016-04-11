angular.module 'diveLog'
.directive 'diveLogCard', ->
  restrict: 'E'
  templateUrl: (element, attrs) ->
    if attrs['displayMode'] == '1'
      'diveEntry1.html'
    else
      'diveEntry2.html'
