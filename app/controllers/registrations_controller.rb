class RegistrationsController < Devise::RegistrationsController
  protected
  def after_sign_up_path_for(resource)
    welcome_path(new: 1)
  end

  def after_inactive_sign_up_path_for(resource)
    welcome_path(new: 1)
  end
end