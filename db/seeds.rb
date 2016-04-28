# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Pokemon.delete_all
Item.delete_all

#pokemon

Pokemon.create(id: 1, name: 'Bulbasaur', type1:  'Grass', type2: 'Poison', move1: 'Leech Seed',move2: 'Vine Whip', move3: 'Tackle', move4: 'Sleep Powder', hp: 45, attack: 49, defense: 49, specialAttack: 65, specialDefense: 65, speed: 45)
Pokemon.create(id: 2, name: 'Ivysaur',type1: 'Grass', type2: 'Poison',move1: 'Vine Whip', move2: 'Razor Leaf', move3: 'Sleep Powder', move4: 'Take Down', hp: 60, attack: 62, defense: 63, specialAttack: 80, specialDefense: 80, speed: 60)
Pokemon.create(id: 3, name: 'Venusaur', type1: 'Grass', type2: 'Poison', move1: 'Vine Whip',move2: 'Solarbeam', move3: 'Take Down', move4: 'Sleep Powder', hp: 80, attack: 82, defense: 83, specialAttack: 100, specialDefense: 100, speed: 80)
#Pokemon.create(id: , name: '', type1: '', type2: '', move1: '', move2: '', move3: '', move4: '', hp: , attack: , defense: , specialAttack: , specialDefense: , speed: )


#item

Item.create(id: 1, name: 'Potion', price: 300, item_type: 'Medicine')
Item.create(id: 2, name: 'Super Potion', price: 600, item_type: 'Medicine')
Item.create(id: 3, name: 'Hyper Potion', price: 1200, item_type: 'Medicine')
Item.create(id: 4, name: 'Max Potion', price: 2100, item_type: 'Medicine')
Item.create(id: 5, name: 'Poke Ball', price: 1000, item_type: 'Pokeballs')
Item.create(id: 6, name: 'Great Ball', price: 2500, item_type: 'Pokeballs')
Item.create(id: 7, name: 'Ultra Ball', price: 5000, item_type: 'Pokeballs')
Item.create(id: 8, name: 'Master Ball', price: 25000, item_type: 'Pokeballs')
Item.create(id: 9, name: 'Leaf Stone', price: 6000, item_type: 'Evolution_Stone')
Item.create(id: 10, name: 'Water Stone', price: 6000, item_type: 'Evolution_Stone')
Item.create(id: 11, name: 'Thunder Stone', price: 6000, item_type: 'Evolution_Stone')
Item.create(id: 12, name: 'Fire Stone', price: 6000, item_type: 'Evolution_Stone')
Item.create(id: 13, name: 'Moon Stone', price: 6000, item_type: 'Evolution_Stone')