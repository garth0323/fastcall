// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require_tree .

// $( document ).ready(function() {
//   $( "form" ).submit(function( event ) {
//     var url = window.location.href
//     var dataArray = $( this ).serializeArray(),
//     dataObj = {};

//     $(dataArray).each(function(i, field){
//       dataObj[field.name] = field.value;
//     });

//     $.ajax({
//       method: "POST"
//       url: "/leads",
//       data: {form: dataObj, url: url }
    
//     console.log( dataObj );
//     console.log( url );
//     event.preventDefault();
//   });
// });