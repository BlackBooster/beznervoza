module UsersHelper
  def full_adress
    @user.street + " " + @user.house + " " + @user.apartment + " " + @user.zipcode
  end
end
