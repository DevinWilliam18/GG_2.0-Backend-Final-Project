# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


customer2 = Customer.create(name: "Jono", email: "bowow@gmail.com", phone_number: "01231313", address: "Kec. situlangit, Kel. roro, Jl. Tabatoki no 990");


order1 = Order.create(status: "NO", customer_id: customer2.id)
order2 = Order.create(status: "NO", customer_id: customer2.id)