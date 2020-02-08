require 'faker'
k_bart = User.create(username: "k_bart",email:"admin@kbart.com",password:"123abc",credits:0,bio:"",rating:0)


10.times do 
   User.create(username: Faker::Games::Overwatch.hero,email:Faker::Internet.email,password:Faker::Crypto.md5,credits:0,bio:Faker::Lorem.words,rating:0)
end
category = Category.create(name:"Electronics")

10.times do
    puts "seeding items ..."
    Item.create(
        name:Faker::Commerce.product_name,
        seller_id:User.all.sample.id,
        buyer_id:k_bart.id,
        category:category,
        price:Faker::Commerce.price,
        description:Faker::Lorem.words)
end

