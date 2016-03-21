angular.module 'dropdown'
.controller 'sitesCtrl', [
  '$scope'
  ($scope) ->
    $scope.sites = [
      {id: 1, name: "El Arouk",           loc: "Hurghada"}
      {id: 2, name: "Fanadir",            loc: "Hurghada"}
      {id: 3, name: "Shab El Erg",        loc: "Hurghada"}
      {id: 4, name: "Jackfish Allee",     loc: "Ras Mohamed"}
      {id: 5, name: "Shark-Yolanda",      loc: "Ras Mohamed"}
      {id: 6, name: "Shark Observatory",  loc: "Ras Mohamed"}
    ]
]
