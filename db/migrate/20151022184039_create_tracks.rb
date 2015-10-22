class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
      t.string :name, null: false
      t.integer :album_id, null: false
      t.string :track_type
      t.text :lyrics

      t.timestamps
    end
    change_column :tracks, :track_type, :string, default: "Regular", null: false
  end
end
