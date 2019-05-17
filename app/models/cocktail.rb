class Cocktail < ApplicationRecord
   has_many :doses, dependent: :destroy
   has_many :ingredients, through: :doses
   # has_many :ingredients
   validates :name, uniqueness: true, presence: true
   # add_reference :cocktails, :ingredient, foreign_key: true
end
