class AddLikesToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :likes, :integer, default: 0
  end
end
