class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Fields for sign up
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email,
                                     :password,
                                     :last_name,
                                     :first_name,
                                     :sur_name,
                                     :date_of_birth,
                                     :is_female,
                                     :street,
                                     :house,
                                     :apartment,
                                     :skype,
                                     :zipcode,
                                     :country_id,
                                     :region_id,
                                     :city_id) }
    # Fields for editing an existing account
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username,
                                                                   :email,
                                                                   :password,
                                                                   :current_password,
                                                                   :is_female) }
  end
end
