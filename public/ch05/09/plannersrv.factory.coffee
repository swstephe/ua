angular.module 'yw.planning'
.factory 'plannerSrv', -> isDeep: (depth) -> depth > 60
