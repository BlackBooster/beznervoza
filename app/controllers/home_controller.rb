class HomeController < ApplicationController
  def welcome
  end

  def show
    @users = User.all
  end
end
