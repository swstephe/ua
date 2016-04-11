angular.module 'controls'
.directive 'topDive', ->
  restrict: 'A'
  link: (scope, element, attrs) ->
    children = element.children()
    element.children().remove()
    panel = angular.element '<div>'
    panel.addClass 'panel panel-primary'
    header = angular.element '<div>'
    header.addClass 'panel-heading'
    header.text attrs.header
    panel.append header
    body = angular.element '<div>'
    body.addClass 'panel-body'
    panel.append body
    for child in children
      body.append child
    element.append panel
    footer = angular.element '<div>'
    footer.addClass 'panel-footer'
    footer.text attrs.footer
    panel.append footer

