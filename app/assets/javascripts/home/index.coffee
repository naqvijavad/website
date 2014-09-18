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

  # showForm2 = (email) ->
    

  $('#register-1').on 'submit', (event) ->
    form = $(event.target)
    $.ajax
      url: '/register-early',
      type: 'POST',
      data: form.serialize(),
      success: (resp)->
        if resp.success == 1
          # showForm2(resp.user.email)
          $('#register-1').hide()
          $('#register-2').show()
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
  

  # $("#register-1").validate
  #   rules:
  #     name: "required",
  #     mobile:
  #       required: true,
  #       length: 10
  #     email:
  #       required: true,
  #       email: true
  #   messages:
  #     name: "Please enter your name",            
  #     mobile: "Please enter a valid mobile number",
  #     email: "Please enter a valid email address",
  #     agree: "Please accept our policy"
  #   submitHandler: (form)->
  #     form.submit();