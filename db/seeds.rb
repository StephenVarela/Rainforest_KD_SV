# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

gi =  Product.new(name: 'BJJ Gi',
             description: 'Marital art gi for competition',
             price_in_cents: 170000
             )



comic =  Product.new(name: 'Comic Book',
                      description: 'Short Graphic Novel',
                      price_in_cents: 4000
                      )


sousvide = Product.new(name: 'Sous Vide',
                        description: 'Used to make really good steak ',
                        price_in_cents: 100000)

gi.save
comic.save
sousvide.save
