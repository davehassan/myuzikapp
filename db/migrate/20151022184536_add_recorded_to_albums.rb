class AddRecordedToAlbums < ActiveRecord::Migration
  def change
    add_column :albums, :recorded, :string, default: "Studio"
  end
end
