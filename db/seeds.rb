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

magenta = Color.create(name: 'magenta', complementary_color: 'green')
red_magenta = Color.create(name: 'red magenta', complementary_color: 'blue green')
red = Color.create(name: 'red', complementary_color: 'cyan')
red_orange = Color.create(name: 'red orange', complementary_color: 'blue')
yellow = Color.create(name: 'yellow', complementary_color: 'violet blue')
yellow_green = Color.create(name: 'yellow green', complementary_color: 'violet')
green = Color.create(name: 'green', complementary_color: 'magenta')
blue_green = Color.create(name: 'blue green', complementary_color: 'red magenta')
cyan = Color.create(name: 'cyan', complementary_color: 'red')
blue = Color.create(name: 'blue', complementary_color: 'red orange')
violet_blue = Color.create(name: 'violet blue', complementary_color: 'yellow')
violet = Color.create(name: 'violet', complementary_color: 'yellow green')

denim = Color.create(name: 'denim', complementary_color: 'N/A')
navy = Color.create(name: 'navy', complementary_color: 'N/A')
burgundy = Color.create(name: 'burgundy', complementary_color: 'N/A')
olive = Color.create(name: 'olive', complementary_color: 'N/A')

white = Color.create(name: 'white', complementary_color: 'N/A')
grey = Color.create(name: 'grey', complementary_color: 'N/A')
black = Color.create(name: 'black', complementary_color: 'N/A')
# CATEGORIES

hat = Category.create(name: 'hat')
top = Category.create(name: 'top')
jacket = Category.create(name: 'jacket')
bottom = Category.create(name: 'bottom')
shoes = Category.create(name: 'shoes')

# CLOTHES

#Hats
bruins_hat = Clothe.create(name: 'Bruins Hat', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/bruins_hat.png', category_id: hat.id, color_id: yellow.id)
bape_hat = Clothe.create(name: 'Bape Snapback', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/bape_hat.png', category_id: hat.id, color_id: green.id)
supreme_hat = Clothe.create(name: 'Supreme Camp Cap', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/supreme_hat.png', category_id: hat.id, color_id: cyan.id)
chance_hat = Clothe.create(name: 'Chance The Rapper Hat', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/chance_hat.png', category_id: hat.id, color_id: black.id)
kings_hat = Clothe.create(name: 'Kings Hat', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/black_kings_hat.png', category_id: hat.id, color_id: black.id)
mets_hat = Clothe.create(name: 'Mets Hats', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/47-brand-mlb-clean-up-cap-mens.png', category_id: hat.id, color_id: blue.id)
bape_bucket_hat = Clothe.create(name: 'Bape Bucket Hat', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/bape_bucket_hat.png', category_id: hat.id, color_id: black.id)

#Tops
white_vneck = Clothe.create(name: 'V Neck', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/FPN5c397e0904d9675c397e0904f51.233669405c397e0904f51.png', category_id: top.id, color_id: white.id)
white_polo = Clothe.create(name: 'White Polo', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/RLpolo.png', category_id: top.id, color_id: white.id)
wade_jersey = Clothe.create(name: 'Miami Heat Jersey (Miami Vice)', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/wade_jersey_vice.png', category_id: top.id, color_id: white.id)
denim_shirt = Clothe.create(name: 'Denim Shirt', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/s7-1283986_lifestyle.png', category_id: top.id, color_id: denim.id)
navy_polo = Clothe.create(name: 'Navy Polo', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/Tommy-Hilfiger-Navy-Polo.png', category_id: top.id, color_id: navy.id)
purple_hoodie = Clothe.create(name: 'Basic Hoodie', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/DynamicImageHandler.png', category_id: top.id, color_id: violet.id)
finesse_sweater = Clothe.create(name: 'Finesse Sweater', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/finesse.png', category_id: top.id, color_id: red_orange.id)

#Jackets
red_varsity = Clothe.create(name: 'Varsity Jacket', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/red_varsityjacket.png', category_id: jacket.id, color_id: red.id)
olive_parka = Clothe.create(name: 'Canada Goose Parka', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/olive_CGparka.png', category_id: jacket.id, color_id: olive.id)
cyan_bomber = Clothe.create(name: 'Bomber Jacket', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/HotelCA_Teal_2_grande.png', category_id: jacket.id, color_id: cyan.id)
navy_bomber = Clothe.create(name: 'Navy Bomber', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/navy_bomber.png', category_id: jacket.id, color_id: navy.id)
denim_sherpa = Clothe.create(name: 'Denim Sherpa Jacket', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/sherpa_denim_jacket.png', category_id: jacket.id, color_id: denim.id)
grey_jacket = Clothe.create(name: 'AllSaints Jacket', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/allsaints_grey_jacket.jpg', category_id: jacket.id, color_id: grey.id)

#Bottoms
red_orange_shorts = Clothe.create(name: 'Shorts', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/red_orange_shorts.png', category_id: bottom.id, color_id: red_orange.id)
yellow_shorts = Clothe.create(name: 'Yellow Shorts', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/yellow_shorts.png', category_id: bottom.id, color_id: yellow.id)
olive_chinos = Clothe.create(name: 'Olive Chinos', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/olivegreen_pants.png', category_id: bottom.id, color_id: olive.id)
blue_shorts = Clothe.create(name: 'Blue Shorts', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/NOTTINGHAM_BLUE_5_INCH_FRONT_1512x1512_e1d893bb-80b3-4e2b-aedd-02fdba5a02c4_1600x.png', category_id: bottom.id, color_id: blue.id)
jeans = Clothe.create(name: 'Jeans', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/jeans.png', category_id: bottom.id, color_id: denim.id)
black_denim = Clothe.create(name: 'Black Denim', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/black_denim.png', category_id: bottom.id, color_id: black.id)
pinstripe_trousers = Clothe.create(name: 'Pinstripe Trousers', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/pinstripe_trousers.png', category_id: bottom.id, color_id: navy.id)

#Shoes
flyknit_racers = Clothe.create(name: 'Nike Flyknit Racers', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/white_flyknit_racers.png', category_id: shoes.id, color_id: white.id)
red_octobers = Clothe.create(name: 'Monk Straps', image_url: 'https://www.stadiumgoods.com/media/catalog/product/cache/1/base/1000x600/9df78eab33525d08d6e5fb8d27136e95/5/0/508214_660_2_2.png', category_id: shoes.id, color_id: red_orange.id)
nmd_r1 = Clothe.create(name: 'NMD R1', image_url: 'https://www.stadiumgoods.com/media/catalog/product/cache/1/base/1000x600/9df78eab33525d08d6e5fb8d27136e95/s/3/s31502_3.png', category_id: shoes.id, color_id: blue.id)
ones = Clothe.create(name: 'Jordan 1', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/red_blue_1s.png', category_id: shoes.id, color_id: white.id)
aqua8 = Clothe.create(name: 'Aqua 8', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/aqua_8s.png', category_id: shoes.id, color_id: black.id)
pocket_knife = Clothe.create(name: 'Pocket Knife DM Trooper', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/pocket_knife_dm_trooper.png', category_id: shoes.id, color_id: green.id)
blue_suede_chelsea_boots = Clothe.create(name: 'Chelsea Boots', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/blue_suede_boots.png', category_id: shoes.id, color_id: violet_blue.id)
burgundy_monk_straps = Clothe.create(name: 'Monk Straps', image_url: 'https://s3.us-east-2.amazonaws.com/outfitdesignr/burgundy_monk_straps.png', category_id: shoes.id, color_id: burgundy.id)


# OCCASIONS

biscas = Occasion.create(name: 'business casual')
casual = Occasion.create(name: 'casual')
formal = Occasion.create(name: 'formal')
fratty = Occasion.create(name: 'fratty')

# OUTFITS

outfit = Outfit.create(occasion_id: casual.id, user_id: ji.id)


# OUTFIT CLOTHES

OutfitClothe.create(outfit_id: outfit.id, clothe_id: kings_hat.id)
OutfitClothe.create(outfit_id: outfit.id, clothe_id: denim_shirt.id)
OutfitClothe.create(outfit_id: outfit.id, clothe_id: olive_parka.id)
OutfitClothe.create(outfit_id: outfit.id, clothe_id: olive_chinos.id)
OutfitClothe.create(outfit_id: outfit.id, clothe_id: flyknit_racers.id)






#USER CLOTHES

ji_clothes1 = UserClothe.create(user_id: ji.id, clothe_id: olive_parka.id)
ji_clothes2 = UserClothe.create(user_id: ji.id, clothe_id: burgundy_monk_straps.id)
ji_clothes3 = UserClothe.create(user_id: ji.id, clothe_id: ones.id)
ji_clothes4 = UserClothe.create(user_id: ji.id, clothe_id: olive_chinos.id)
ji_clothes5 = UserClothe.create(user_id: ji.id, clothe_id: grey_jacket.id)
