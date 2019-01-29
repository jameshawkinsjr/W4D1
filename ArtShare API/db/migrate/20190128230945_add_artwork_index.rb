class AddArtworkIndex < ActiveRecord::Migration[5.2]
  add_index :artworks, [:artist_id, :title], unique:true
  add_index :artworks, :artist_id
end
