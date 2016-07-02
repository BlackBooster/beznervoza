$(document).on('ready', function(){
  $('#user_country_id').on('change', function (){
    var country_id = $('#user_country_id').val();
    $.ajax({
      url: "/users/get_regions",
      type: "GET",
      data: { country_id: country_id }
    })
  });

  $('#new_user').on('change', '#region_id', function (){
   var region_id = $('#region_id').val();
   $.ajax({
     url: "/users/get_cities",
     type: "GET",
     data: { region_id: region_id }
   })
  });
});