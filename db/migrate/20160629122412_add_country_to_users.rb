class AddCountryToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :country, index: true
    add_reference :users, :region, index: true
    add_reference :users, :city, index: true
  end
end
