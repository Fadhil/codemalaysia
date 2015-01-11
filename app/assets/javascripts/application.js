// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

$( document ).ready(function() {     
  $('#profile').on('show.bs.modal', function(event){
    var modal = $(this)
    var body = modal.find('.modal-body')
    var button = $(event.relatedTarget)
    var bodyValue = button.closest('.media').html();
    body.html($('<div class="media">' + bodyValue + '</div>'));
    body.find('.hidden').removeClass('hidden');
  })

  $('#profile').on('hidden.bs.modal', function(event){
    var modal = $(this)
    var body = modal.find('.modal-body')

    body.html('')
  })
})