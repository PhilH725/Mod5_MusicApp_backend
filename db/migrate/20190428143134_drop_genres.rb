
class DropGenres < ActiveRecord::Migration[5.2]

  def change
    drop_table :genres do |t|
      t.string :name, null: false
      t.timestamps null: false
    end
  end

end
