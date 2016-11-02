$(document).on('turbolinks:load', function() {

  $('.pet-toys').on('ajax:success', function(event, response){
    var shortest = 0;
    $.each(response, function( index, value ) {
      if(response[index]['description'].length < response[shortest]['description'].length) {
        shortest = index;
      }
    });
    console.log(response[shortest]['description']);
  });

});
