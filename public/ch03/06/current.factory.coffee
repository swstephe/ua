angular.module 'app'
.factory 'currentSpot', ->
  activeMenuId = ''
  titleText = ''
  setCurrentSpot: (menuId, title) ->
    activeMenuId = menuId
    titleText = title
  getActiveMenu: -> activeMenuId
  getTitle: -> titleText
