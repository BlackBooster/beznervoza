module UsersHelper
  def full_adress
    @user.street + " " + @user.house + " " + @user.apartment + " " + @user.zipcode
  end

  def gender
    @gender = User::GENDER_TYPES.to_h.key(@user.is_female)

  end
end
