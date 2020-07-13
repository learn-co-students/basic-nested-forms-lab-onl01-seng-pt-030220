class Recipe < ActiveRecord::Base
  has_many :ingredients 
  accepts_nested_attributes_for :ingredients
####extra
  # def ingredients_attributes=(ingredients_data)
  #   ingredients_data.each do |index, data|
  #     i = Ingredient.new(data)
  #     self.ingredients << i if i.save
  #   end
  # end

end
