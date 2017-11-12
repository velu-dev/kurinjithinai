class Product < ApplicationRecord
  mount_uploader :product_image1, ProductUploader
  belongs_to :product_category
  
end
