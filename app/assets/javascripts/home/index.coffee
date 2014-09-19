$.app =
  fn: {}  

$(document).ready ->
  $('.safe-section a').bind "click", (event)-> 
    target = $(event.target)
    caption = target.closest(".caption")
    if target.hasClass('read')
      caption.addClass('show').removeClass('no-show')
    else
      caption.addClass('no-show').removeClass('show')
    return false

  $.validate()

  $.app.fn.showRegsiterForm2 = ()->
    $('#register-1').closest('.register-form-div').addClass('inactive').removeClass('active')
    $('#register-2').closest('.register-form-div').addClass('active').removeClass('inactive')

  $.app.fn.showRegsiterForm1 = ()->
    $('#register-2').closest('.register-form-div').addClass('inactive').removeClass('active')
    $('#register-1').closest('.register-form-div').addClass('active').removeClass('inactive')
    
  $('#register-1').on 'submit', (event) ->
    form = $(event.target)
    $.ajax
      url: '/register-early',
      type: 'POST',
      data: form.serialize(),
      success: (resp)->
        if resp.success == 1
          # showForm2(resp.user.email)
          console.log(resp)
          $.app.fn.showRegsiterForm2()
          $('#register-2 input#user_email').val(resp.user.email)
        else
          alert("Something went wrong. Please try again.")
      failure: (resp)->
        console.log(resp)
    false

  $('#register-2').on 'submit', (event) ->
    form = $(event.target)
    $.ajax
      url: '/register-early',
      type: 'POST',
      data: form.serialize(),
      success: (resp)->
        console.log(resp)
        if resp.success == 1
          alert("Thank you!")
        else
          alert("Something went wrong. Please try again.")
      failure: (resp)->
        console.log(resp)
    false
  
  $('a.hero-button-content').on 'click', (event) ->
    if $('.register-form').hasClass('no-show')
      # Show the register forms now.      
      $('.register-form').removeClass('no-show').addClass('show')
      $('.hero-button-content').find('.button-text').html('No Thanks. May be Later')
      $('.hero-button-content').removeClass('dark-yellow-bg').addClass('grey-bg')
      $('.hero-button-content').removeClass('no-registering').addClass('registering')
    else
      # Don't show the register forms.
      $('.register-form').removeClass('show').addClass('no-show')
      $('.hero-button-content').removeClass('grey-bg').addClass('dark-yellow-bg')
      $('.hero-button-content').removeClass('registering').addClass('no-registering')
      $('.hero-button-content').find('.button-text').html('Get 20% Extra Discount')