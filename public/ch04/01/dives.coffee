diveLogApi = ->
  dives = [{
    site: "Abu Gotta Ramada"
    location: "Hurghada, Egypt"
    depth: 72
    time: 54
  },{
    site: "Ponte Mahoon"
    location: "Maehbourg, Mauritius"
    depth: 54
    time: 38
  },{
    site: "Molnar Cave"
    location: "Budapest, Hungary"
    depth: 98
    time: 62
  }]
  getDives: -> dives

angular.module 'diveLog', []
.factory 'diveLogApi', diveLogApi
.controller 'diveLogCtrl', [
  '$scope'
  'diveLogApi'
  ($scope, diveLogApi) -> $scope.dives = diveLogApi.getDives()
]
