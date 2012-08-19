class AddAttachmentPictureToArtists < ActiveRecord::Migration
  def self.up
    change_table :artists do |t|
      t.has_attached_file :picture
    end
  end

  def self.down
    drop_attached_file :artists, :picture
  end
end
