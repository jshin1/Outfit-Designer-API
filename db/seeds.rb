# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Clothe.delete_all
User.delete_all
Color.delete_all
UserClothe.delete_all
Category.delete_all
Occasion.delete_all

# USERS

ji = User.create(first_name: 'Ji', last_name: 'Shin')


# COLORS

olive = Color.create(name: 'olive')
red = Color.create(name: 'red')
burgundy = Color.create(name: 'burgundy')
orange = Color.create(name: 'orange')
yellow = Color.create(name: 'yellow')
green = Color.create(name: 'green')
blue = Color.create(name: 'blue')
purple = Color.create(name: 'purple')
black = Color.create(name: 'black')
grey = Color.create(name: 'grey')
white = Color.create(name: 'white')

# CATEGORIES

hat = Category.create(name: 'hat')
top = Category.create(name: 'top')
jacket = Category.create(name: 'jacket')
bottom = Category.create(name: 'bottom')
shoes = Category.create(name: 'shoes')

# CLOTHES

olive_parka = Clothe.create(brand: 'Canada Goose', image_url: 'N/A', category_id: jacket.id, color_id: olive.id)
burgundy_monk_straps = Clothe.create(brand: 'N/A', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/burgundy_monk_straps.png', category_id: shoes.id, color_id: burgundy.id)
ones = Clothe.create(brand: 'Jordan', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/red_blue_1s.png', category_id: shoes.id, color_id: white.id)
olive_chinos = Clothe.create(brand: 'N/A', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/olivegreen_pants.png', category_id: bottom.id, color_id: olive.id)
grey_jacket = Clothe.create(brand: 'AllSaints', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/allsaints_grey_jacket.jpg', category_id: jacket.id, color_id: grey.id)
grey_jacket = Clothe.create(brand: '47Brand', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/black_kings_hat.png', category_id: hat.id, color_id: black.id)

# OCCASIONS

biscas = Occasion.create(name: 'business casual')
casual = Occasion.create(name: 'casual')
formal = Occasion.create(name: 'formal')
fratty = Occasion.create(name: 'fratty')

#USER CLOTHES

ji_clothes1 = UserClothe.create(user_id: ji.id, clothe_id: olive_parka.id)
ji_clothes2 = UserClothe.create(user_id: ji.id, clothe_id: burgundy_monk_straps.id)
ji_clothes3 = UserClothe.create(user_id: ji.id, clothe_id: ones.id)
ji_clothes4 = UserClothe.create(user_id: ji.id, clothe_id: olive_chinos.id)
ji_clothes5 = UserClothe.create(user_id: ji.id, clothe_id: grey_jacket.id)
