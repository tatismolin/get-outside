# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

skiing = Activity.create(
    name: "Skiing", 
    description: "Sliding down the hill.", 
    photo: "https://www.outsideonline.com/sites/default/files/styles/img_600x600/public/2019/10/01/john-clendenin-skiing-poles_s.jpg?itok=HVPFgcMs",
    temperature: 30
)

hiking = Activity.create(
    name: "Hiking", 
    description: "Walking through the mountains.", 
    photo: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/couple-hiking-mountain-climbing-1296x728-header.jpg?w=1155",
    temperature: 75
)

swimming = Activity.create(
    name: "Swimming", 
    description: "Not drowning.", 
    photo: "https://www.brilliantbusinessthings.com/wp-content/uploads/2015/07/drowning-not-waving.jpg",
    temperature: 90
)
