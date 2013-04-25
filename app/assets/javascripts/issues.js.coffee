# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
make_sortable=()->
  update=()->
    ajaxargs=
      type: 'post'
      data: $('#issues').sortable('serialize')
      dataType: 'script'
      url: '/issues/sort' 
    $.ajax(ajaxargs)

  args=
    axis: 'y'
    dropOnEmpty: false
    items: 'li'
    scroll: true
    update: update

  $( "#issues" ).sortable(args)
  $( "#issues" ).disableSelection()

window.make_sortable=make_sortable
window.mks=()->$( "#issues" ).sortable()
