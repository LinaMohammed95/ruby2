json.restaurants @restaurant do |restaurant|
json.partial! 'restaurant', restaurant: restaurant

json.foods @food do |food|
json.id    restaurant.id
json.partial! 'food', food: food

json.desserts @dessert do |dessert|
json.id    restaurant.id
json.food_id    food.id
json.partial! 'dessert', dessert: dessert
end
end
end