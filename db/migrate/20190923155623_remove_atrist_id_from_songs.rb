class RemoveAtristIdFromSongs < ActiveRecord::Migration[5.0]
  def change
    remove_column :songs, :atrist_id, :integer
  end
end
