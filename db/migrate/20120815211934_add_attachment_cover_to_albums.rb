class AddAttachmentCoverToAlbums < ActiveRecord::Migration
  def self.up
    change_table :albums do |t|
      t.has_attached_file :cover
    end
  end

  def self.down
    drop_attached_file :albums, :cover
  end
end
