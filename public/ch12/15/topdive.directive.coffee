angular.module 'controls'
.directive 'topDive', ->
  transclude: 'element'
  priority: 1000
  link: (scope, element, attrs, ctrl, transclude) ->
    topCount = scope.$eval attrs.topCount
    coll = scope.$eval attrs.collection
    prev = element
    for col, i in coll
      childScope = scope.$new()
      childScope.$index = i
      childScope.$dive = col
      transclude childScope, (clone) ->
        prev.after clone
        prev = clone
