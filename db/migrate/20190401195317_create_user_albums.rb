class CreateUserAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :user_albums do |t|
      t.integer :user_id
      t.integer :album_id
      t.integer :rating

      t.timestamps
    end
  end
end
