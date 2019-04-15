class AddPublishedToPlaylists < ActiveRecord::Migration[5.2]
  def change
    add_column :playlists, :published, :boolean, default: false
  end
end
