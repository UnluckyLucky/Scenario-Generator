ready = ->
  
  if window.location.hash == '#menu'
    $("#wrapper").toggleClass("toggled")
 
$(document).ready(ready)
$(document).on('page:load', ready)