angular.module 'messages'
.controller 'MainCtrl', [
  '$scope'
  '$http'
  ($scope, $http) ->
    $scope.myMessages = []
    $scope.reqExpr = 'required'
    $scope.minMaxExpr = ['minlength', 'maxlength']
    $scope.emailExpr = 'email'
    $scope.save = -> alert "Your email has been saved."
    $http.get 'mymessages.json'
    .then (response) -> $scope.myMessages = response.data
]
