angular.module 'diveLog'
.directive 'diveLogCard', ->
  createCard = (scope, element) ->
    div = angular.element '<div>'
    div.addClass if scope.style is 1 then 'logEntry1' else 'logEntry2'
    site = angular.element '<h3>'
    site.text scope.dive.site
    location = angular.element '<h4>'
    location.text scope.dive.location
    diveData = angular.element '<h2>'
    diveData.text "#{scope.dive.depth} feet | #{scope.dive.time} min"
    if scope.style is 1
      div.append site
      div.append location
      div.append diveData
    else
      div.append diveData
      div.append site
      div.append location
    div
  restrict: 'E'
  link: (scope, element, attrs) ->
    div = createCard scope, element
    element.append div
    watcherFn = (watchScope) ->  watchScope.$eval 'style'
    scope.$watch watcherFn, ->
      element.children().remove()
      div = createCard scope, element
      element.append div
