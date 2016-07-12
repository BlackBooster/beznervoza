class HomeController < ApplicationController
  def welcome
    unless params[:new]
      redirect_to root_path
    end
  end

  def show
    @users = User.all
  end
end
