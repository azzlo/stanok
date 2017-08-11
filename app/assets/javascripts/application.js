// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require materialize
//= require_tree .

$( function() {
  $(".button-collapse").sideNav();
  $(".dropdown-button").dropdown();



  // materializecss init

  $('select').material_select();
  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });

  value = $('.range-field input').val();
  if (value > 0) {
    $('.percentage-container .percentage-text').html(value);
  }

  $('#project_percentage, #service_business_gain').change(function(){
    value = $('.range-field .value').html();
    $('.percentage-container .percentage-text').html(value);
  });
});

$(document).ready(function (){
  // MaterializeCSS Initializators
  $('select').material_select();


  if ($('#anotherClientService')){
    toggleClientService();
    $('#anotherClientService').change(function(){
      toggleClientService();
    })
  }

  function toggleClientService (){
  if ($('#anotherClientService').is(':checked')){
    $('#fieldExistentClient').addClass('hide');
    $('#fieldAnotherClient').removeClass('hide');
    $('#fieldContactClient').removeClass('hide');
  }
  else{
    $('#fieldExistentClient').removeClass('hide');
    $('#fieldAnotherClient').addClass('hide');
    $('#fieldContactClient').addClass('hide')
  }
}
});