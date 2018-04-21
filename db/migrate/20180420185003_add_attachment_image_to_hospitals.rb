class AddAttachmentImageToHospitals < ActiveRecord::Migration[5.2]
  def self.up
    change_table :hospitals do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hospitals, :image
  end
end
