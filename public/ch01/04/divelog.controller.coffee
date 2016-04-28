diveLogCtrl = ($scope) ->
  $scope.dives = dives

angular
  .module 'app'
  .controller 'diveLogCtrl', ['$scope', diveLogCtrl]
