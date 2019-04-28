
class DropUserGenres < ActiveRecord::Migration[5.2]

  def change
    drop_table :user_genres do |t|
      t.integer :user_id, null: false
      t.integer :genre_id, null: false
      t.integer :rating, null: false
      t.timestamps null: false
    end
  end

end
