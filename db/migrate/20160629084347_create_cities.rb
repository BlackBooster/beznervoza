class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.column :country_id, :integer, :size => 5
      t.column :region_id, :integer, :size => 5
      t.column :name, :string, :size => 80
      t.timestamps
    end
    add_index :cities, :region_id
  end
end
