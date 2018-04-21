class Doctor < ApplicationRecord
    
def self.search(search)
  where("name LIKE ?", "%#{search}%") 
  where("speciality LIKE ?", "%#{search}%")
end
end
