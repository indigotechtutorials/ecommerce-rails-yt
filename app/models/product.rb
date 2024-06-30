class Product < ApplicationRecord
  has_rich_text :description
  has_many_attached :images
end
