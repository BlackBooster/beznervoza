class UsersController < ApplicationController
  def show
  end

  def get_regions
    country = Country.find(params[:country_id])
    @regions = country.regions

    respond_to do |format|
      format.js
    end
  end

  def get_cities
    region = Region.find(params[:region_id])
    @cities  = region.cities

    respond_to do |format|
      format.js
    end
  end
end
