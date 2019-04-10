class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|
      t.string :name
      t.string :album_image
      t.integer :artist_id

      t.timestamps
    end
  end
end
