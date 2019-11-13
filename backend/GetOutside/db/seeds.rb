# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all
User.destroy_all


ice_skate = Activity.create(
    name: "Go ice skating", 
    description: "Skate on ice", 
    photo: "https://www.uncovercolorado.com/wp-content/uploads/2017/11/KeystoneLakeside-Village-Christmas-Ice-Rink-1280x720.jpg",
    temperature: 15
)

ski = Activity.create(
    name: "Go skiing", 
    description: "Sliding down the hill.", 
    photo: "https://www.outsideonline.com/sites/default/files/styles/img_600x600/public/2019/10/01/john-clendenin-skiing-poles_s.jpg?itok=HVPFgcMs",
    temperature: 15
)

sled = Activity.create(
    name: "Go sledding", 
    description: "sled down a snowy hill", 
    photo: "https://www.colorado.com/sites/default/files/tubinghill_3_copperPR.jpg",
    temperature: 15
)

hike = Activity.create(
    name: "Go for a hike", 
    description: "Walking through the mountains.", 
    photo: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/couple-hiking-mountain-climbing-1296x728-header.jpg?w=1155",
    temperature: 75
)

swim = Activity.create(
    name: "Go for a swim", 
    description: "Not drowning.", 
    photo: "https://www.brilliantbusinessthings.com/wp-content/uploads/2015/07/drowning-not-waving.jpg",
    temperature: 90
)

fourteener = Activity.create(
    name: "Conquer a 14er", 
    description: "Walking in the mountains", 
    photo: "https://www.rei.com/blog/wp-content/uploads/2018/10/Quandary-2.jpg",
    temperature: 70
)

playground = Activity.create(
    name: "Play at a playground", 
    description: "Take your kids to the park", 
    photo: "https://static.mommypoppins.com/styles/image620x420/s3/almont_13_copy.jpg",
    temperature: 75
)


kayak = Activity.create(
    name: "Go whitewater kayaking", 
    description: "Kayak in rapids", 
    photo: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/70/2b/6e.jpg",
    temperature: 80
)

mtb = Activity.create(
    name: "Mountain Bike", 
    description: "Ride a bike on singletrack", 
    photo: "https://coloradotrail.org/wp-content/uploads/2018/10/baletd_DSC4974.jpg",
    temperature: 70
)

hot_springs = Activity.create(
    name: "Visit a hot spring", 
    description: "Sit in natural hot spring", 
    photo: "https://visitglenwood.com/wp-content/uploads/2019/01/Hot-Springs-banner.jpg",
    temperature: 45
)

#  = Activity.create(
#     name: "", 
#     description: "", 
#     photo: ,
#     temperature: 
# )

#  = Activity.create(
#     name: "", 
#     description: "", 
#     photo: ,
#     temperature: 
# )

#  = Activity.create(
#     name: "", 
#     description: "", 
#     photo: ,
#     temperature: 
)

user = User.create(name: "Main user")