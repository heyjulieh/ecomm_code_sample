# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$(window).load ->

  $('a[data-target]').click (e) ->
    # e.preventDefault()
    $this = $(this)
    if $this.data('target') == 'Add to'
      url = $this.data('addurl')
      new_target = "Remove from"
    # else
    #   url = $this.data('removeurl')
    #   new_target = "Add to"
    $.ajax url: url, type: 'put', success: (data) ->
      $('.cart-count').html(data)
      location.reload();


$(window).load ->
  $('#mycart .fa-times-circle').click (e) ->
    e.preventDefault()
    $this = $(this).closest('a')
    url = $this.data('targeturl')
    $.ajax url: url, type: 'put', success: (data) ->
      $('.cart-count').html(data)
      $('.cart-money').html(data)
      $this.closest('.cart-item').slideUp()
      location.reload();
