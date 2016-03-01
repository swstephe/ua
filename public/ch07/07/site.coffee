@clicked = ->
  console.log "Enter: clicked"
  setTimedTask()
  console.log "Exit: clicked"
@setTimedTask = ->
  console.log "Enter: setTimedTask"
  setTimeout (-> console.log "Timed task runs"), 1000
  console.log "Exit: setTimedTask"
