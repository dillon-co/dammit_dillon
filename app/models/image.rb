class Image < ApplicationRecord
  belongs_to :variant
  has_one_attached :image_file

end
