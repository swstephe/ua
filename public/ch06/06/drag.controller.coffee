angular.module 'events'
.controller 'dragCtrl', [
  '$scope'
  ($scope) ->
    startX = 0
    startY = 0
    x = 0
    y = 0
    element = null
    doc = null

    $scope.mouseDown = (e) ->
      element = angular.element '#item'
      doc = angular.element document
      e.preventDefault()
      startX = e.screenX - x
      startY = e.screenY - y
      doc.on 'mousemove', mouseMove
      doc.on 'mouseup', mouseUp
      true

    mouseMove = (e) ->
      y = e.screenY - startY
      x = e.screenX - startX
      element.css
        top: "#{y}px"
        left: "#{x}px"

    mouseUp = (e) ->
      doc.off 'mousemove', mouseMove
      doc.off 'mouseup', mouseUp
]
