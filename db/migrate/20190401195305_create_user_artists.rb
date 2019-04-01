class CreateUserArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :user_artists do |t|
      t.integer :user_id
      t.integer :artist_id
      t.integer :rating

      t.timestamps
    end
  end
end
