$(document).on('turbolinks:load', function() {

  $('.pet-toys').on('ajax:success', function(event, response){
    console.log(response);
  });

});
