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
      event.preventDefault

  $(document).on 'turbolinks:load', ->
    $('.countable').on 'click keyup blur change paste input onload', ->
      countLength($(this))

  countLength = ($field) ->
    len = $field.val().length
    $("##{$field.attr('id')}_len").html(len)
    countMax = Number($("#" + ($field.attr('id')) + "_max").html())
    countDown = countMax - len
    if countDown < 0
      $("##{$field.attr('id')}_len").css
        color: 'red'
    else
      $("##{$field.attr('id')}_len").css
        color: '#555'
