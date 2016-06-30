class CreateRegions < ActiveRecord::Migration
  def change
    create_table :regions do |t|
      t.column :country_id, :integer, :size => 5
      t.column :name, :string, :size => 80
      t.timestamps
    end
    add_index :regions, :country_id
  end
end
