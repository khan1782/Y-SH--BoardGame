class Category < ApplicationRecord
  has_many :tags
  has_mant :games, through: :tags
end
