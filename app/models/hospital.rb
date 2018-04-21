class Hospital < ApplicationRecord
    has_attached_file :image, styles: { medium: "300x300>"}
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
    
def self.search(search)
  where("name LIKE ?", "%#{search}%") 
 
end
    
end
