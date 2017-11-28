$ ->
  $(document).on 'turbolinks:load', ->
    $('form').on 'click', '.remove_ticket', (event) ->
      $(this).prev('input[type=hidden]').val('1')
      $(this).closest('ticketset').remove()
      event.preventDefault()
  $(document).on 'turbolinks:load', ->
    $('form').on 'click', '.add_ticket', (event) ->
      time = new Date().getTime()
      regexp = new RegExp($(this).data('id'), 'g')
      $(this).before($(this).data('boxes').replace(regexp, time))
      event.preventDefault()
