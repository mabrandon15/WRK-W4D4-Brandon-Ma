class CreateAlbums < ActiveRecord::Migration[5.1]
  def change
    create_table :albums do |t|
      t.string :title, null: false
      t.integer :year, null: false
      t.integer :band_id, null: false
      t.string :version, null: false 
      t.timestamps
    end
    
    add_index :albums, :title, unique: true
    add_index :albums, :band_id, unique: true
  end
end
