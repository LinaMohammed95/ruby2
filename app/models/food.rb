class Food < ApplicationRecord
    #validates : food_id, presence: true, numericality: { only_integer: true }
    #validates : description, length: {minimum: 10}, uniqueness: { case_sensitive: true }
    #validates :ingredient, length: {minimum: 10}, uniqueness: { case_sensitive: true }
   
   
    belongs_to :restaurant
    has_many :desserts
end
