class RestaurantPizza < ApplicationRecord
    validates :price, 
        inclusion: {
        in: (1..30),
        message: 'Price must be between 1 and 30'
        }

    belongs_to :restaurant
    belongs_to :pizza
end
