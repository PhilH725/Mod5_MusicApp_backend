class CreateUserSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_songs do |t|
      t.integer :user_id
      t.integer :song_id
      t.integer :rating

      t.timestamps
    end
  end
end
