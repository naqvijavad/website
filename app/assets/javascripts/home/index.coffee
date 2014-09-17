$(document).ready ->
  $('.safe-section a').bind "click", (event)-> 
    target = $(event.target)
    caption = target.closest(".caption")
    if target.hasClass('read')
      caption.addClass('show').removeClass('no-show')
    else
      caption.addClass('no-show').removeClass('show')
    return false