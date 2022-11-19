
10.times do
    restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone: Faker::PhoneNumber.cell_phone
    )
    4.times do
        food = restaurant.foods.create(
        description: Faker::Food.description,
        dish: Faker::Food.dish,
        fruits: Faker::Food.fruits,
        ingredient: Faker::Food.ingredient,
        measurement: Faker::Food.measurement,
        spice: Faker::Food.spice,
        sushi: Faker::Food.sushi,
        vegetables: Faker::Food.vegetables
        )
        2.times do
            food.desserts.create(
            variety: Faker::Dessert.variety,
            topping: Faker::Dessert.topping,
            flavor: Faker::Dessert.flavor
            )
        end
    end 
end

