angular.module 'digest'
.controller 'doubler', ->
  @word = ''
  @doubled = -> "#{@word} #{@word}"
  true
