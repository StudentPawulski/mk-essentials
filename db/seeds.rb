# frozen_string_literal: true

Product.destroy_all
Category.destroy_all
AdminUser.destroy_all
Page.destroy_all

NUMBER_OF_CATEGORIES = 10
PRODUCTS_PER_CAT = 30

NUMBER_OF_CATEGORIES.times do
  category = Category.create(name: Faker::Commerce.unique.department)

  PRODUCTS_PER_CAT.times do
    category.products.create(
      name: Faker::Commerce.unique.product_name,
      desc: Faker::Lorem.sentence,
      quantity: rand(10..123_456).to_i,
      price: rand(100..99_999_999).to_i
    )
  end
end

Page.create(
  name: 'about',
  content: 'We sell all sorts of crap',
  title: 'About Us'
)

Page.create(
  name: 'contact',
  content: 'Contact us at: spawulski@gmail.com',
  title: 'Contact Us'
)

puts "Created #{Category.count} Categories."
puts "Created #{Product.count} Products."
puts "Created #{Page.count} Pages"
AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?
