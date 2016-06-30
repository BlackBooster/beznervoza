class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string, :limit => 50
    add_column :users, :first_name, :string, :limit => 50
    add_column :users, :sur_name, :string, :limit => 50
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
    add_column :users, :street, :string, :limit=>100
    add_column :users, :house, :string, :limit=>100
    add_column :users, :apartment, :string, :limit=>5
    add_column :users, :skype, :string, :limit=>50
    add_column :users, :zipcode, :string, :limit=>5
  end
end
