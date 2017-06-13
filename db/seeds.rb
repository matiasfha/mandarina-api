# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Provider.create([
#   {
#     name: 'Ahita',
#     mail: 'ahita@ahita.cl',
#     phone: '65162384'
#   },
#   {
#     name: 'Taraan',
#     mail: 'contacto@taraan.cl',
#     phone: '65162384'
#   },
#   {
#     name: 'Santos y Diablitos',
#     mail: 'contacto@santosydiablitos.cl',
#     phone: '65162384'
#   },
#   {
#     name: 'Difrax',
#     mail: 'contacto@difrax.cl',
#     phone: '65162384'
#   },
# ])
require 'factory_girl_rails'
FactoryGirl.define do 
  factory :provider do 
    name { Faker::Name.name }
    email { Faker::Internet.email }
    phone { Faker::PhoneNumber.cell_phone}
    web { Faker::Internet.url }
    contact { Faker::Name.name }
  end
end

FactoryGirl.create_list(:provider,5)

# t.string :name
# t.string :code
# t.integer :purchasePrice
# t.integer :salePrice
# t.integer :netPrice
# t.integer :stock

# t.references :provider, foreign_key: true
FactoryGirl.define do
  factory :product do
    name { Faker::Commerce.unique.product_name }
    code { Faker::Code.unique.asin }
    purchasePrice { Faker::Commerce.price }
    salePrice { Faker::Commerce.price }
    netPrice { Faker::Commerce.price }
    stock { Faker::Number.between(1, 10) }
    provider Provider.find(Provider.ids.shuffle.first) || association(:provider)
  end
end

FactoryGirl.create_list(:product, 50)


