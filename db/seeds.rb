


User.create(
  name: "Shannon",
  username: "Shan",
  email: "Shannon@Woobly.net",
  current_location: "Austin, TX",
  password_digest: "123",
)

User.create(
  name: "Sam",
  username: "Sam",
  email: "Sam@Woobly.net",
  current_location: "Bronx, NY",
  password: "123",
)





















# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


#########################
#########################
#########################
#########################


puts "🍕 Seeding restaurants..."
Restaurant.create!([
  {
    name: "Sottocasa NYC",
    address: "298 Atlantic Ave, Brooklyn, NY 11201"
  },
  {
    name: "PizzArte",
    address: "69 W 55th St, New York, NY 10019"
  },
  {
    name: "San Matteo NYC",
    address: "1559 2nd Ave, New York, NY 10028"
  }
])

puts "🍕 Seeding pizzas..."
Pizza.create!([
  {
    name: "Cheese",
    ingredients: "Dough, Tomato Sauce, Cheese"
  },
  {
    name: "Pepperoni",
    ingredients: "Dough, Tomato Sauce, Cheese, Pepperoni"
  },
  {
    name: "California",
    ingredients: "Dough, Sauce, Ricotta, Red peppers, Mustard"
  },
  {
    name: "Greek",
    ingredients: "Dough, Sauce, Cheese, Feta, Artichokes, Kalamata Olives"
  },
  {
    name: "Margherita",
    ingredients: "Dough, Sauce, Cheese, Basil"
  },
  {
    name: "BBQ Chicken",
    ingredients: "Dough, BBQ sauce, Chicken, Cilantro, Red Onions, Fontina Cheese"
  },
  {
    name: "Hawaiian",
    ingredients: "Dough, Sauce, Cheese, Ham, Pineapple "
  },
  {
    name: "Meat Lovers",
    ingredients: "Dough, Sauce, Cheese, Pepperoni, Sausage, Meatballs, Mushrooms"
  },
  {
    name: "Frutti di mare",
    ingredients: "Dough, Sauce, Cheese, Tuna, Shrimp, Mussels"
  },
  {
    name: "Veggie",
    ingredients: "Dough, Sauce, Cheese, Red Peppers, Green Peppers, Onions, Mushrooms"
  }
])

puts "🍕 Adding pizzas to restaurants..."
Restaurant.all.each do |restaurant|
  rand(1..5).times do
    # get a random pizza
    pizza = Pizza.find(Pizza.pluck(:id).sample)

   # RestaurantPizza.create!(restaurant_id: restaurant.id, pizza_id: pizza.id, price: rand(5..25))
  end
end

puts "🍕 Done seeding!"


#########################
#########################
#########################
#########################










## WE DESTROY  Dependent -> Independent

# Dependent Models
WooblySnack.destroy_all


# Independent Models
Snack.destroy_all
Woobly.destroy_all








## WE DESTROY   Independent -> Dependent

puts "Seeding Wooblies...."
woobly = Woobly.create(
            name: "Woobly",
            hometown: "The Bronx"
        ) 
joobly = Woobly.create(
            name: "Joobly",
            hometown: "Manhattan"
        )
wawawa = Woobly.create(
            name: "WaWaWa",
            hometown: "Republica Dominicana"
        )
mooply = Woobly.create(
            name: "Mooply",
            hometown: "The Abyss"
        ) 




puts "Seeding Snacks...."

ice_cream = Snack.create(
    name: "Ice Cream",
    ingredients: "Ice, Cream, Happiness"
)
chips = Snack.create(
    name: "Chips",
    ingredients: "Potatoes, Salt"
)
grapes = Snack.create( 
    name: "Grapes",
    ingredients: "...Grapes?"
)




puts "Seeding WooblySnacks...."

ws1 = WooblySnack.create( 

    price: 3.33,
    special_additional_ingredients: "Joy ~",
    marked_as_healthy: true,

    # focus - models/relationships
    woobly: woobly,
    snack: ice_cream

)
    # focus - ids
    # woobly_id: woobly.id,
    # snack_id: ice_cream.id


    new_ws = WooblySnack.create( 

        price: 3.33,
        special_additional_ingredients: "Joy ~",
        marked_as_healthy: true,

        # focus - models/relationships
        woobly: Woobly.first,
        snack: Snack.first

    )












# puts "🏕 Seeding campers..."
# camper1 = Camper.create(name: 'Caitlin', age: 8)
# camper2 = Camper.create(name: 'Lizzie', age: 9)
# camper3 = Camper.create(name: 'Tom', age: 12)
# camper4 = Camper.create(name: 'Morgan', age: 15)
# camper5 = Camper.create(name: 'Danny', age: 11)
# camper6 = Camper.create(name: 'Peter', age: 10)
# camper7 = Camper.create(name: 'Amanda', age: 9)
# camper8 = Camper.create(name: 'Nick', age: 12)

# puts "🏕 Seeding activities..."
# activity1 = Activity.create(name: 'Archery', difficulty: 2)
# activity2 = Activity.create(name: 'Swimming', difficulty: 3)
# activity3 = Activity.create(name: 'Photography', difficulty: 2)
# activity4 = Activity.create(name: 'Arts & Crafts', difficulty: 5)
# activity5 = Activity.create(name: 'Kayaking', difficulty: 3)
# activity6 = Activity.create(name: 'Fencing', difficulty: 4)
# activity7 = Activity.create(name: 'Canoeing', difficulty: 3)
# activity8 = Activity.create(name: 'Windsurfing', difficulty: 5)

# puts "🏕 Seeding signups..."
# Signup.create(camper_id: camper1.id, activity_id: activity2.id, time: 11)
# Signup.create(camper_id: camper1.id, activity_id: activity1.id, time: 12)
# Signup.create(camper_id: camper1.id, activity_id: activity4.id, time: 15)
# Signup.create(camper_id: camper2.id, activity_id: activity2.id, time: 11)
# Signup.create(camper_id: camper2.id, activity_id: activity1.id, time: 12)
# Signup.create(camper_id: camper4.id, activity_id: activity8.id, time: 16)
# Signup.create(camper_id: camper5.id, activity_id: activity7.id, time: 11)
# Signup.create(camper_id: camper3.id, activity_id: activity4.id, time: 12)

# puts "✅ Done seeding!"