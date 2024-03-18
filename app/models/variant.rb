class Variant < ApplicationRecord
  belongs_to :art_work
  has_many :images
  
  enum size: { small: 0, medium: 1, large: 2 }

end
