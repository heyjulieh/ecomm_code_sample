# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Item.destroy_all
items = Item.create([
  {
    brand: "Supreme",
    release_year: 2017,
    colorway: "Denim",
    description: "S Logo Baseball Cap",
    condition: "Great",
    new_or_used: "Used",
    category: "Accessories",
    quantity: 1,
    size: "One-Size",
    fit: "True to size",
    price: 75.00,
    images: ["https://s-media-cache-ak0.pinimg.com/736x/2d/e9/f8/2de9f8e81b586173874b456a7faca1f5--beanies-streetwear.jpg"],
    tags: ["hat", "hats", "accessory", "accesories", "supreme", "denim", "cap", "caps", "5-panel", "logo", "s logo"]
  },
  {
    brand: "Supreme",
    release_year: 2016,
    colorway: "Denim",
    description: "Acid-Washed Bucket Hat",
    condition: "Great",
    new_or_used: "Used",
    category: "Accessories",
    quantity: 1,
    size: "One-Size",
    fit: "True to size",
    price: 70.00,
    images: ["http://static.highsnobiety.com/wp-content/uploads/2013/05/supreme-acid-wash-crusher-0.jpg"],
    tags: ["hat", "hats", "accessory", "accesories", "supreme", "denim", "bucket", "bucket hat"]
  },
  {
    brand: "Supreme x Jordan",
    release_year: 2016,
    colorway: "Black",
    description: "Jumpman Logo Baseball Cap",
    condition: "Great",
    new_or_used: "New",
    category: "Accessories",
    quantity: 1,
    size: "One-Size",
    fit: "True to size",
    price: 85.00,
    images: ["https://i.pinimg.com/564x/23/7c/b4/237cb48e71efa8cd6adecbca73ef557f.jpg"],
    tags: ["hat", "hats", "accessory", "accesories", "supreme", "denim", "cap", "caps", "jordan", "jumpman", "jordan x supreme"]
  },
  {
    brand: "Comme des Garconne",
    release_year: 2014,
    colorway: "Black/Red",
    description: "Japanese Exclusive Heart Pocket Tee",
    condition: "Great",
    new_or_used: "New",
    category: "Tops",
    quantity: 1,
    size: "XL",
    fit: "Runs small",
    price: 200.00,
    images: ["http://d1gb2jjgc1xisz.cloudfront.net/media/catalog/product/cache/4/image/9df78eab33525d08d6e5fb8d27136e95/A/Z/AZ-T229-051-1-3.jpg"],
    tags: ["tops", "short sleeve", "t-shirt", "t-shirts", "tees", "short sleeves", "black", "comme des garconne", "cdg"]
  },
  {
    brand: "Nike",
    release_year: 2016,
    colorway: "Black/Gum",
    description: "SF Air Force 1 High",
    condition: "Great",
    new_or_used: "Used",
    category: "Shoes",
    quantity: 1,
    size: "10",
    fit: "Runs .5 down",
    price: 280.00,
    images: ["https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/0/2/021536_1.jpg"],
    tags: ["shoes", "high-top", "high", "special force", "sf", "special force air force 1", "air force", "special", "sf af1", "sf af", "sf air force 1", "nike", "sf air force 1 high" "special force air force 1 high"]
  },
  {
    brand: "Nike",
    release_year: 2016,
    colorway: "Triple White",
    description: "ComplexCon Exclusive SF Air Force 1 High",
    condition: "Great",
    new_or_used: "New",
    category: "Shoes",
    quantity: 1,
    size: "10",
    fit: "Runs .5 down",
    price: 280.00,
    images: ["https://stockx-360.imgix.net/nike-sf-air-force-1-all-white-complex_TruView/Images/nike-sf-air-force-1-all-white-complex_TruView/Lv2/img26.jpg?auto=format,compress&w=1117"],
    tags: ["shoes", "high-top", "high", "special force", "sf", "special force air force 1", "air force", "air force 1", "special", "sf af1", "sf af", "sf air force 1", "nike", "sf air force 1 high" "special force air force 1 high", "complex", "complexcon", "complexcon air force 1", "complexcon sf air force 1", "complexcon special force air force 1", "complexcon sf af 1"]
  },
  {
    brand: "Palace",
    release_year: 2017,
    colorway: "Black",
    description: "Blazed Zip Bomber Jacket",
    condition: "Great",
    new_or_used: "New",
    category: "Tops",
    quantity: 1,
    size: "L",
    fit: "True to size",
    price: 300.00,
    images: ["https://process.filestackapi.com/AazSisOjUQx2TZJQX0PdNz/rotate=deg:exif/resize=width:1200,height:1600/output=compress:true,quality:70,strip:true/ooA4j5uGTVCdtEqs8G7m+palace-blazed-zip-bomber-black-fall-2017"],
    tags: ["tops", "long-sleeve", "long sleeve", "jacket", "black", "palace", "blazed", "bomber", "bomber jacket", "blazed bomber jacket"]
  },
  {
    brand: "Adidas",
    release_year: 2017,
    colorway: "Green Night",
    description: "Ultra Boost Atr Mid",
    condition: "Great",
    new_or_used: "New",
    category: "Shoes",
    quantity: 1,
    size: "10",
    fit: "True to Size",
    price: 190.00,
    images: ["https://stockx.imgix.net/Adidas-Ultra-Boost-ATR-Mid-Green-Night.png?fit=fill&bg=FFFFFF&w=1400&h=1000&auto=format,compress&trim=color"],
    tags: ["shoes", "mid", "green", "adidas", "ultra boost", "ultraboost", "mid green night", "green night", "ultra boost mid", "ultraboost mid", "adidas ultra boost", "adidas ultraboost", "adidas ultra boost mid green", "adidas ultra boost mid green night" "ultra boost green", "green ultra boost", "green ultraboost", "green ultra boost"]
  },
])
