customer1 = Customer.create(name: "waris", email: "waris@gmail.com", phone_number: "01231899123", address: "Kelurahan manana")
customer2 = Customer.create(name: "neno", email: "rijikiki@gmail.com", phone_number: "081212120", address: "Kec. Situ Langit, Kel. Roro, Jl. Tabatoki no 990")
customer3 = Customer.create(name: "Robert Lewandowski", email: "robert@gmail.com", phone_number: "0821236724586", address: "Kec. dodorejo, Kel. getongmanis, Jl. pahlawan no 990")

order1 = Order.create(customer_id: customer1.id)
order2 = Order.create(customer_id: customer2.id)


category1 = Category.create(category_name: "Beverages")
category2 = Category.create(category_name: "Snacks")
category3 = Category.create(category_name: "Sweets")
category4 = Category.create(category_name: "Rice")
category5 = Category.create(category_name: "Bakery")
category6 = Category.create(category_name: "Japanese")
category7 = Category.create(category_name: "Chinese")
category8 = Category.create(category_name: "Bakso&Soto")

owner1 = Owner.create(owner_name: "Warung denys")
owner2 = Owner.create(owner_name: "Warung Juragan")
owner3 = Owner.create(owner_name: "Mas Topan")
food1 = Food.create(food_name: "Cap jay seafood", description: "Cap jay goreng dicampur dengan daging ayam, udang, cumi, telur dadar",
    qty: 10, price: 22000, owner_id: owner1.id, category_id: category7.id)
   
food2 = Food.create(food_name: "Nasi goreng hongkong", description: "Pake telur, sosis, bakso, wortel, daging ayam",
    qty: 10, price: 20000, owner_id: owner1.id, category_id: category7.id)
food3 = Food.create(food_name: "Bakso urat", description: "isi 6 : 2 bakso biasa, 3 bakso urat, 1 bakso keju",
    qty: 10, price: 25000, owner_id: owner2.id, category_id: category8.id)
food4 = Food.create(food_name: "Donat coklat", description: "Donat coklat pakai misis",
    qty: 10, price: 25000, owner_id: 2, category_id: 5)
food5 = Food.create(food_name: "Ayam bakar mama", description: "Sudah pake nasi",
    qty: 10, price: 27000, owner_id: owner3.id, category_id: 4) 


order4 = Order.create(customer_id: 1)

detail1 = Detail.create(qty: 1, total_price: 27000, food_id: 4, order_id: order1.id)
detail2 = Detail.create(qty: 2, total_price: 44000, food_id: 1, order_id: order1.id)




# old
# order4 = Order.create(status: "NO", customer_id: 1)

# detail1 = Detail.create(qty: 1, total_price: 27000, food_id: 4, order_id: order4.id)
# detail2 = Detail.create(qty: 2, total_price: 44000, food_id: 1, order_id: order4.id)