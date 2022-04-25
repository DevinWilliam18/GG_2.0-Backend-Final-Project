# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# category1 = Category.create(category_name: "Beverages")
# category2 = Category.create(category_name: "Snacks")
# category3 = Category.create(category_name: "Sweets")
# category4 = Category.create(category_name: "Rice")
# category5 = Category.create(category_name: "Bakery")
# category6 = Category.create(category_name: "Japanese")
# category7 = Category.create(category_name: "Chinese")
# category8 = Category.create(category_name: "Bakso&Soto")




# owner1 = Owner.create(owner_name: "Warung denys")
# owner2 = Owner.create(owner_name: "Warung Juragan")
# owner3 = Owner.create(owner_name: "Mas Topan")
# food1 = Food.create(food_name: "Cap jay seafood", description: "Cap jay goreng dicampur dengan daging ayam, udang, cumi, telur dadar",
#     qty: 10, price: 22000, owner_id: owner1.id, category_id: category7.id)
   
# food2 = Food.create(food_name: "Nasi goreng hongkong", description: "Pake telur, sosis, bakso, wortel, daging ayam",
#     qty: 10, price: 20000, owner_id: owner1.id, category_id: category7.id)
# food3 = Food.create(food_name: "Bakso urat", description: "isi 6 : 2 bakso biasa, 3 bakso urat, 1 bakso keju",
#     qty: 10, price: 25000, owner_id: owner2.id, category_id: category8.id)
# food4 = Food.create(food_name: "Donat coklat", description: "Donat coklat pakai misis",
#     qty: 10, price: 25000, owner_id: 2, category_id: 5)
# food5 = Food.create(food_name: "Ayam bakar mama", description: "Sudah pake nasi",
#     qty: 10, price: 27000, owner_id: owner3.id, category_id: 4) 


order4 = Order.create(status: "NO", customer_id: 1)

detail1 = Detail.create(qty: 1, total_price: 27000, food_id: 4, order_id: order4.id)
detail2 = Detail.create(qty: 2, total_price: 44000, food_id: 1, order_id: order4.id)