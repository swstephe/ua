angular.module 'diveLog', []
.controller 'diveLogCtrl', [
  '$scope'
  ($scope) ->
    $scope.dives = [{
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
    $scope.options = [
      {id: 'sm', name: "Small cards"}
      {id: 'smbl', name: "Small cards with blue background"}
      {id: 'smrd', name: "Small cards with red background"}
      {id: 'bg', name: "Big cards"}
      {id: 'bgbl', name: "Big cards with blue background"}
      {id: 'bgrd', name: "Big cards with red background"}
    ]
    $scope.selection = 'sm'
    $scope.size = ->
      switch
        when $scope.selection.indexOf('sm') >= 0 then "col-sm-4"
        else "col-sm-6"
    $scope.color = ->
      switch
        when $scope.selection.indexOf('bl') >= 0
          'border': '2px solid navy'
          'background-color': 'navy'
          'color': 'white'
        when $scope.selection.indexOf('rd') >= 0
          'border': '2px solid darkred'
          'background-color': 'darkred'
          'color': 'white'
        else {}
]
