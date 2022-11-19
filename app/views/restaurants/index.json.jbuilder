json.restaurants do
json.array! (@restaurant) do |restaurant|
json.partial! 'restaurant', restaurant: restaurant
    json.foods do
    json.array! (restaurant.foods) do |food|
    json.partial! 'food', food: food
        json.desserts  do
        json.array! (food.desserts) do |dessert|
        json.partial! 'dessert', dessert: dessert
        end
        end
    end
    end
end
end