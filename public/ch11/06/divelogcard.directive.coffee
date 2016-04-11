angular.module 'diveLog'
.directive 'diveLogCard', ->
  restrict: 'E'
  template: '<div class="logEntry">' +
  '<h3>{{dive.site}}</h3>' +
  '<h4>{{dive.location}}</h4>' +
  '<h2>{{dive.depth}} feet' +
  '| {{dive.time}} min</h2>' +
  '</div>'
