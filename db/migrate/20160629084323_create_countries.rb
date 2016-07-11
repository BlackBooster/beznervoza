class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
      t.column :code, :string, :size => 3
      t.column :name, :string, :size => 80
      t.timestamps
    end
  end
end
