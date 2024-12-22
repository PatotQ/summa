class Obra < ApplicationRecord
  belongs_to :usuario

  has_one_attached :imagen
end
