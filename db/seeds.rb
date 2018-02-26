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
    product_name: "S Logo Baseball Cap",
    description: "Lorem Ipsum Blah Blah Blah Blah Blah Blah Blah Mesh Knit Acrylic Rayon",
    condition: "Great",
    new_or_used: "Used",
    category: "Accessories",
    quantity: 1,
    size: "One-Size",
    fit: "True to size",
    status: "Available",
    price: 75,
    images: ["https://s-media-cache-ak0.pinimg.com/736x/2d/e9/f8/2de9f8e81b586173874b456a7faca1f5--beanies-streetwear.jpg"],
    tags: ["hat", "hats", "accessory", "accesories", "supreme", "denim", "cap", "caps", "5-panel", "logo", "s logo"]
  },
  {
    brand: "Supreme",
    release_year: 2016,
    colorway: "Denim",
    product_name: "Acid-Washed Bucket Hat",
    description: "Lorem Ipsum Blah Blah Blah Blah Blah Blah Blah Mesh Knit Acrylic Rayon",
    condition: "Great",
    new_or_used: "Used",
    category: "Accessories",
    quantity: 1,
    size: "One-Size",
    fit: "True to size",
    status: "Available",
    price: 70,
    images: ["http://static.highsnobiety.com/wp-content/uploads/2013/05/supreme-acid-wash-crusher-0.jpg"],
    tags: ["hat", "hats", "accessory", "accesories", "supreme", "denim", "bucket", "bucket hat"]
  },
  {
    brand: "Supreme x Jordan",
    release_year: 2016,
    colorway: "Black",
    product_name: "Jumpman Logo Baseball Cap",
    description: "Lorem Ipsum Blah Blah Blah Blah Blah Blah Blah Mesh Knit Acrylic Rayon",
    condition: "Great",
    new_or_used: "New",
    category: "Accessories",
    quantity: 1,
    size: "One-Size",
    fit: "True to size",
    status: "Available",
    price: 85,
    images: ["https://i.pinimg.com/564x/23/7c/b4/237cb48e71efa8cd6adecbca73ef557f.jpg"],
    tags: ["hat", "hats", "accessory", "accesories", "supreme", "denim", "cap", "caps", "jordan", "jumpman", "jordan x supreme"]
  },
  {
    brand: "Comme des Garconne",
    release_year: 2014,
    colorway: "Black/Red",
    product_name: "Japanese Exclusive Heart Pocket Tee",
    description: "Lorem Ipsum Blah Blah Blah Blah Blah Blah Blah Mesh Knit Acrylic Rayon",
    condition: "Great",
    new_or_used: "New",
    category: "Tops",
    quantity: 1,
    size: "XL",
    fit: "Runs small",
    status: "Available",
    price: 200,
    images: ["https://media.endclothing.com/media/f_auto,q_auto,w_760,h_760/prodmedia/media/catalog/product/0/6/06-03-2017_commedesgarcons_playwomenslargehearttee_black_p1t229-bk_sp_1.jpg"],
    tags: ["tops", "short sleeve", "t-shirt", "t-shirts", "tees", "short sleeves", "black", "comme des garconne", "cdg"]
  },
  {
    brand: "Nike",
    release_year: 2016,
    colorway: "Black/Gum",
    product_name: "SF Air Force 1 High",
    description: "Lorem Ipsum Blah Blah Blah Blah Blah Blah Blah Mesh Knit Acrylic Rayon",
    condition: "Great",
    new_or_used: "Used",
    category: "Shoes",
    quantity: 1,
    size: "10",
    fit: "Runs .5 down",
    status: "Available",
    price: 280,
    images: ["https://www.flightclub.com/media/catalog/product/cache/1/image/1600x1140/9df78eab33525d08d6e5fb8d27136e95/0/2/021536_1.jpg"],
    tags: ["shoes", "high-top", "high", "special force", "sf", "special force air force 1", "air force", "special", "sf af1", "sf af", "sf air force 1", "nike", "sf air force 1 high" "special force air force 1 high"]
  },
  {
    brand: "Nike",
    release_year: 2016,
    colorway: "Triple White",
    product_name: "ComplexCon Exclusive SF Air Force 1 High",
    description: "Lorem Ipsum Blah Blah Blah Blah Blah Blah Blah Mesh Knit Acrylic Rayon",
    condition: "Great",
    new_or_used: "New",
    category: "Shoes",
    quantity: 1,
    size: "10",
    fit: "Runs .5 down",
    status: "Available",
    price: 280,
    images: ["https://stockx-360.imgix.net/nike-sf-air-force-1-all-white-complex_TruView/Images/nike-sf-air-force-1-all-white-complex_TruView/Lv2/img26.jpg?auto=format,compress&w=1117"],
    tags: ["shoes", "high-top", "high", "special force", "sf", "special force air force 1", "air force", "air force 1", "special", "sf af1", "sf af", "sf air force 1", "nike", "sf air force 1 high" "special force air force 1 high", "complex", "complexcon", "complexcon air force 1", "complexcon sf air force 1", "complexcon special force air force 1", "complexcon sf af 1"]
  },
  {
    brand: "Palace",
    release_year: 2017,
    colorway: "Black",
    product_name: "Blazed Zip Bomber Jacket",
    description: "Lorem Ipsum Blah Blah Blah Blah Blah Blah Blah Mesh Knit Acrylic Rayon",
    condition: "Great",
    new_or_used: "New",
    category: "Tops",
    quantity: 1,
    size: "L",
    fit: "True to size",
    status: "Available",
    price: 300,
    images: ["https://process.filestackapi.com/AazSisOjUQx2TZJQX0PdNz/rotate=deg:exif/resize=width:1200,height:1600/output=compress:true,quality:70,strip:true/ooA4j5uGTVCdtEqs8G7m+palace-blazed-zip-bomber-black-fall-2017"],
    tags: ["tops", "long-sleeve", "long sleeve", "jacket", "black", "palace", "blazed", "bomber", "bomber jacket", "blazed bomber jacket"]
  },
  {
    brand: "Adidas",
    release_year: 2017,
    colorway: "Green Night",
    product_name: "Ultra Boost Atr Mid",
    description: "Lorem Ipsum Blah Blah Blah Blah Blah Blah Blah Mesh Knit Acrylic Rayon",
    condition: "Great",
    new_or_used: "New",
    category: "Shoes",
    quantity: 1,
    size: "10",
    fit: "True to Size",
    status: "Available",
    price: 190,
    images: ["https://stockx.imgix.net/Adidas-Ultra-Boost-ATR-Mid-Green-Night.png?fit=fill&bg=FFFFFF&w=1400&h=1000&auto=format,compress&trim=color"],
    tags: ["shoes", "mid", "green", "adidas", "ultra boost", "ultraboost", "mid green night", "green night", "ultra boost mid", "ultraboost mid", "adidas ultra boost", "adidas ultraboost", "adidas ultra boost mid green", "adidas ultra boost mid green night" "ultra boost green", "green ultra boost", "green ultraboost", "green ultra boost"]
  },
])

Blog.destroy_all
blogs = Blog.create([
  {
    title: "Supreme is the shit",
    content: "I've been in love with Supreme since I was in middle school. While I wasn't a skater, the allure of it's grit, guerilla marketing, ultimate cool, really had me drooling at every drop. Back then, I couldn't afford it-- and was super excited when I got my hands on something finally. It was the Kate Moss x Supreme white picture tee. It was super covetted and to this day-- is still covetted. Today, I'm more than excited about how luxe it's come-- but still staying true to skate culture and grit.",
    category: "Fashion",
    images: ["https://i.ytimg.com/vi/1ra2AI5WqzI/maxresdefault.jpg", "https://nssdata.s3.amazonaws.com/images/galleries/11290/supreme-x-louis-vuitton.jpg", "https://img00.deviantart.net/c15c/i/2013/105/5/0/red_sky_at_night_shepherds_supreme_by_mrmoodys-d61sza5.jpg"],
    tags: ["Supreme", "clothes", "street wear", "fashion"]
  },
  {
    title: "Bape is holding on for dear life",
    content: "When I was a kid, I'd always wanted something Bape. So the first time, I went to Japan, I made sure I copped something-- a keychain. Yeah, it was tiny and the only thing I could afford at the time. I told myself that when I got richer, I'd be back for the shark camo hoodie. To my surprise, Bape died out and it broke my heart. And then it came back-- and I was excited-- and I was 26-- and had money! I bought myself that hoodie-- and sadly.. it wasn't the same as when I first touched it. The quality definitely went down and it's so much more expensive. They're still trying to push the same old stuff with a small twist. I don't think that's enough to bring them back from the dead.",
    category: "Fashion",
    images: ["http://s3-us-west-2.amazonaws.com/hypebeast-wordpress/image/2009/12/bape-store-singapore-opening-11.jpg", "http://www.authenticbape.com/images/bape-wallpapers/bape-camo.jpg", "http://blog.wishatl.com/wp-content/uploads/2015/12/Bape-Puma-4.jpg"],
    tags: ["Bape", "clothes", "street wear", "fashion"]
  },
  {
    title: "FOG is underrated for a reason",
    content: "A lot of people say FOG is a copy cat hodge podge urban brand-- taking all of the good things in streetwear and barfing it out. But people don't understand the quality FOG injects into the clothes, and his thoughtfulness in colors, head to toe outfits, and simplicity. But the issue now is that he is trying a different route-- detouring from the urban coolness, to the preppy. I don't know how I feel about this and while I want a couple of the items-- I'm a bit sad that FOG went this route. It turned me off big time-- and to stray so early.. when you're barely starting to build a brand.. I don't think it's a good idea.",
    category: "Fashion",
    images: ["https://static.highsnobiety.com/wp-content/uploads/2017/03/11132707/fear-of-god-fifth-collection-lookbook-00.jpg", "https://media.gq.com/photos/5773fe88f2e3c2d95dee1cd4/master/w_2933/fear-of-god-sneakers-lead-03.jpg", "http://www.subterraneansuburbs.com/wp-content/uploads/2014/08/tumblr_n7na05AoVk1rnd229o1_1280.jpg"],
    tags: ["FOG", "Fear of God", "clothes", "street wear", "fashion"]
  },
  {
    title: "KAWS always kills the toy game",
    content: "KAWS is my ultimate all time favorite artist and toy creator. I dream of the day when I can have a room that simply has all of the toys and statues he every created. It's so genius and relevant-- still, after all these years. Recently, I copped a couple of his re-released toys, and one came in today. I hope you all weren't sleeping on the drop. I think it's actually still available at his online store. Check that out if you haven't! Anyway, KAWS is the ultimate toy god-- and I wish all toys were made with the same care he puts into it-- from the excellent paint job, to the line details, to the bit of articulation. It doesn't seem like much to the casual eye-- but to all the vinyl toy enthusiasts out there-- we all know why KAWS is king.",
    category: "Toys",
    images: ["http://optimistinc.com/assets/projects/kaws-1150x645.png", "https://i0.wp.com/static.thetoychronicle.com/wp-content/uploads/2017/02/kaws-bff-vinyl-toy-2017black-.jpg?resize=960%2C646", "https://assets.paddle8.com/1259/1244/92169/92169-1448970055-Kaws_NoReply.jpg"],
    tags: ["KAWS", "toys", "art", "urban art", "vinyl toys"]
  },
  {
    title: "Supreme is the shit",
    content: "I've been in love with Supreme since I was in middle school. While I wasn't a skater, the allure of it's grit, guerilla marketing, ultimate cool, really had me drooling at every drop. Back then, I couldn't afford it-- and was super excited when I got my hands on something finally. It was the Kate Moss x Supreme white picture tee. It was super covetted and to this day-- is still covetted. Today, I'm more than excited about how luxe it's come-- but still staying true to skate culture and grit.",
    category: "Fashion",
    images: ["https://i.ytimg.com/vi/1ra2AI5WqzI/maxresdefault.jpg", "https://nssdata.s3.amazonaws.com/images/galleries/11290/supreme-x-louis-vuitton.jpg", "https://img00.deviantart.net/c15c/i/2013/105/5/0/red_sky_at_night_shepherds_supreme_by_mrmoodys-d61sza5.jpg"],
    tags: ["Supreme", "clothes", "street wear", "fashion"]
  },
  {
    title: "Bape is holding on for dear life",
    content: "When I was a kid, I'd always wanted something Bape. So the first time, I went to Japan, I made sure I copped something-- a keychain. Yeah, it was tiny and the only thing I could afford at the time. I told myself that when I got richer, I'd be back for the shark camo hoodie. To my surprise, Bape died out and it broke my heart. And then it came back-- and I was excited-- and I was 26-- and had money! I bought myself that hoodie-- and sadly.. it wasn't the same as when I first touched it. The quality definitely went down and it's so much more expensive. They're still trying to push the same old stuff with a small twist. I don't think that's enough to bring them back from the dead.",
    category: "Fashion",
    images: ["http://s3-us-west-2.amazonaws.com/hypebeast-wordpress/image/2009/12/bape-store-singapore-opening-11.jpg", "http://www.authenticbape.com/images/bape-wallpapers/bape-camo.jpg", "http://blog.wishatl.com/wp-content/uploads/2015/12/Bape-Puma-4.jpg"],
    tags: ["Bape", "clothes", "street wear", "fashion"]
  },
  {
    title: "FOG is underrated for a reason",
    content: "A lot of people say FOG is a copy cat hodge podge urban brand-- taking all of the good things in streetwear and barfing it out. But people don't understand the quality FOG injects into the clothes, and his thoughtfulness in colors, head to toe outfits, and simplicity. But the issue now is that he is trying a different route-- detouring from the urban coolness, to the preppy. I don't know how I feel about this and while I want a couple of the items-- I'm a bit sad that FOG went this route. It turned me off big time-- and to stray so early.. when you're barely starting to build a brand.. I don't think it's a good idea.",
    category: "Fashion",
    images: ["https://static.highsnobiety.com/wp-content/uploads/2017/03/11132707/fear-of-god-fifth-collection-lookbook-00.jpg", "https://media.gq.com/photos/5773fe88f2e3c2d95dee1cd4/master/w_2933/fear-of-god-sneakers-lead-03.jpg", "http://www.subterraneansuburbs.com/wp-content/uploads/2014/08/tumblr_n7na05AoVk1rnd229o1_1280.jpg"],
    tags: ["FOG", "Fear of God", "clothes", "street wear", "fashion"]
  },
  {
    title: "KAWS always kills the toy game",
    content: "KAWS is my ultimate all time favorite artist and toy creator. I dream of the day when I can have a room that simply has all of the toys and statues he every created. It's so genius and relevant-- still, after all these years. Recently, I copped a couple of his re-released toys, and one came in today. I hope you all weren't sleeping on the drop. I think it's actually still available at his online store. Check that out if you haven't! Anyway, KAWS is the ultimate toy god-- and I wish all toys were made with the same care he puts into it-- from the excellent paint job, to the line details, to the bit of articulation. It doesn't seem like much to the casual eye-- but to all the vinyl toy enthusiasts out there-- we all know why KAWS is king.",
    category: "Toys",
    images: ["http://optimistinc.com/assets/projects/kaws-1150x645.png", "https://i0.wp.com/static.thetoychronicle.com/wp-content/uploads/2017/02/kaws-bff-vinyl-toy-2017black-.jpg?resize=960%2C646", "https://assets.paddle8.com/1259/1244/92169/92169-1448970055-Kaws_NoReply.jpg"],
    tags: ["KAWS", "toys", "art", "urban art", "vinyl toys"]
  }
])
