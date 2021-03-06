// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require_tree .

$(document).ready(function() {
  if ($(window).width() < 768) {
   $('.insta-mobile').show();
  }
  else {
   $('.insta-mobile').hide();
  }
  $('#img2').on('click',function (e){
    var img1 = $('#img1').attr('src');
    var img2 = $('#img2').attr('src');
    $('#img1').attr('src', img2);
    $('#img2').attr('src', img1);
  })
  $('#img3').on('click',function (e){
    var img1 = $('#img1').attr('src');
    var img3 = $('#img3').attr('src');
    $('#img1').attr('src', img3);
    $('#img3').attr('src', img1);
  })
});

 $(window).resize(function() {
  if ($(window).width() < 768) {
    $('.insta-mobile').show();
  }
  else {
    $('.insta-mobile').hide();
  }
});
