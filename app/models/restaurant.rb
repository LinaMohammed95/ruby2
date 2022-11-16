class Restaurant < ApplicationRecord
    #validates : restaurant_id, presence: true, numericality: { only_integer: false }
    #validates :name, length: {minimum: 10}, uniqueness: { case_sensitive: true }
    #validates :address, presence: true, allow_blank: false
    #validates :phone,:presence => true,
    #             :numericality => true,
    #             :length => { :minimum => 10, :maximum => 15 }

    has_many :foods

end
