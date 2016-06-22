class AddInfoToUsers < ActiveRecord::Migration
  def change
    add_column :users, :last_name, :string, :limit => 50
    add_column :users, :first_name, :string, :limit => 50
    add_column :users, :date_of_birth, :datetime
    add_column :users, :is_female, :boolean, default: false
  end
end
