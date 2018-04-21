class Patient < ApplicationRecord
    has_many :observations, dependent: :destroy 
validates :name, presence: true,
length: { minimum: 5 }

def self.search(search)
  where("name LIKE ?", "%#{search}%") 
  
end

end
