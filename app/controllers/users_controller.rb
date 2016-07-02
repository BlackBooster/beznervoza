class UsersController < ApplicationController
  def index

  end

  def show
    @user = User.find(params[:id])
    @country = @user.country.name
    @region = @user.region.name
    @city = @user.city.name
  end

  def get_regions
    country = Country.find(params[:country_id])
    @regions = country.regions

    respond_to do |format|
      format.js
      format.json { render :layout => false}
    end
  end

  def get_cities
    region = Region.find(params[:region_id])
    @cities  = region.cities

    respond_to do |format|
      format.js
      format.json { render :layout => false}
    end
  end
end
