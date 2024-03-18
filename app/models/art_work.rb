class ArtWork < ApplicationRecord
  include Rails.application.routes.url_helpers

  belongs_to :user
  has_many :variants

  has_one_attached :main_image

  def create_variants
    # create a variant for each size

    # 20x15, 30x22, 42x31
    #   0,     1,     2
    
    [0, 1, 2].each do |size|
      # create a variant with the size
      variant = Variant.create(
        art_work: self,
        size: size,
        width: size == 0 ? 20 : size == 1 ? 30 : 42,
        height: size == 0 ? 15 : size == 1 ? 22 : 31,
      )

    end
  end

  def main_image_url
    rails_blob_url(self.main_image, host: 'localhost:3000')
  end
end
