# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
FoodItem.destroy_all

10.times do
     Waitstaff.create(
        name: Faker::Name.first_name,
      )
end

FoodItem.create([
  {name: 'Turkey Club',category: 'Sandwiches', price:12.00  },
  {name: 'Cuban',category: 'Sandwiches', price:15.50  },
  {name: 'Grilled Cheese',category: 'Sandwiches', price:11.00  },
  {name: 'Cobb',category: 'Salads', price:16.00  },
  {name: 'Nicoise',category: 'Salads', price:15.00  },
  {name: 'Steakhouse',category: 'Salads', price:18.00  },
  {name: 'Coffee',category: 'Beverages', price:3.00  },
  {name: 'Iced Tea',category: 'Beverages', price:2.50  },
  {name: 'Lemonade',category: 'Beverages', price:2.50  },
  {name: 'Cheese Cake',category: 'Desserts', price:6.00  },
  {name: 'Key Lime Pie',category: 'Desserts', price:6.00  },
  {name: 'Chocolate Mousse',category: 'Desserts', price:7.00  },

])
