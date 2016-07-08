$(document).on('ready', function(){
  $('#user_country_id').on('change', function (){
    var country_id = $('#user_country_id').val();
    $.ajax({
      url: "/users/get_regions",
      type: "GET",
      data: { country_id: country_id }
    })
  });
  //$('#user_region_id').remove();

  $('#new_user').on('change', '#user_region_id', function (){
   var region_id = $('#user_region_id').val();
   $.ajax({
     url: "/users/get_cities",
     type: "GET",
     data: { region_id: region_id }
   })
  });
  $("#new_user, #login_user").validate({
    rules: {
      'user[email]': {required: true, email: true},
      'user[password]': {required: true, minlength: 8},
      'user[password_confirmation]': {required: true, equalTo: '#user_password'},
      'user[last_name]': { required: true },
      'user[first_name]': { required: true },
      'user[sur_name]': { required: true },
      'user[country_id]': { required: true },
      'region_id': { required: true },
      'city_id': { required: true },
      'user[street]': { required: true},
      'user[house]': { required: true, maxlength: 4},
      'user[apartment]': { required: true, maxlength: 3},
      'user[zipcode]': { required: true, maxlength: 6 },
      'user[skype]': { required: true}
    },
    messages: {
      'user[email]': {
        required: "Введите e-mail адрес",
        email: 'Вы ввели некорректный e-mail адрес'
      },
      'user[password]': { minlength: 'Пароль должен содержать минимум 6 знаков' },
      'user[password_confirmation]': {equalTo: 'Пароли должны совпадать'},
      'user[last_name]': 'Введите фамилию',
      'user[first_name]': 'Введите имя',
      'user[sur_name]': 'Введите отчество',
      'user[country_id]': 'Выберите страну',
      'region_id': 'Выберите регион',
      'city_id': 'Выберите город'
    }
  });
});