angular.module 'yw.main'
.controller 'moduleCtrl', [
    '$scope'
    ($scope) -> $scope.message = "Module dependency checked."
]
