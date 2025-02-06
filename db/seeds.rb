# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
#Création des villes
paris = City.create(city_name: 'Paris')
lyon = City.create(city_name: 'Lyon')

#Création des dogsitters
alice = Dogsitter.create(name: 'Alice', city: paris)
bob = Dogsitter.create(name: 'Bob', city: lyon)

#Création des chiens
rex = Dog.create(name: 'Rex', city: paris)
bella = Dog.create(name: 'Bella', city: lyon)

#Création des promenades
Stroll.create(dogsitter: alice, dog: rex)
Stroll.create(dogsitter: bob, dog: bella)
Stroll.create(dogsitter: alice, dog: bella)