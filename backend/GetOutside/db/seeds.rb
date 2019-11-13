# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Activity.destroy_all
User.destroy_all
Plan.destroy_all
ActivityPlan.destroy_all


ice_skate = Activity.create(
    name: "Ice Skate", 
    description: "Go ice skating", 
    photo: "https://www.uncovercolorado.com/wp-content/uploads/2017/11/KeystoneLakeside-Village-Christmas-Ice-Rink-1280x720.jpg",
    temperature: 15
)

ski = Activity.create(
    name: "Ski", 
    description: "Go skiing", 
    photo: "https://www.outsideonline.com/sites/default/files/styles/img_600x600/public/2019/10/01/john-clendenin-skiing-poles_s.jpg?itok=HVPFgcMs",
    temperature: 15
)

sled = Activity.create(
    name: "Sled", 
    description: "Go sledding", 
    photo: "https://www.colorado.com/sites/default/files/tubinghill_3_copperPR.jpg",
    temperature: 15
)

hike = Activity.create(
    name: "Hike", 
    description: "Go for a hike", 
    photo: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/topic_centers/2019-8/couple-hiking-mountain-climbing-1296x728-header.jpg?w=1155",
    temperature: 75
)

swim = Activity.create(
    name: "Swim", 
    description: "Go for a swim", 
    photo: "https://www.brilliantbusinessthings.com/wp-content/uploads/2015/07/drowning-not-waving.jpg",
    temperature: 90
)

fourteener = Activity.create(
    name: "Climb a 14er", 
    description: "Climb a 14er", 
    photo: "https://www.rei.com/blog/wp-content/uploads/2018/10/Quandary-2.jpg",
    temperature: 70
)

playground = Activity.create(
    name: "Play at a Playground", 
    description: "Play at a playground", 
    photo: "https://static.mommypoppins.com/styles/image620x420/s3/almont_13_copy.jpg",
    temperature: 75
)


kayak = Activity.create(
    name: "Whitewater Kayak", 
    description: "Go whitewater kayaking", 
    photo: "https://media.tacdn.com/media/attractions-splice-spp-674x446/07/70/2b/6e.jpg",
    temperature: 80
)

mtb = Activity.create(
    name: "Mountain Bike", 
    description: "Go for a mountain bike ride", 
    photo: "https://coloradotrail.org/wp-content/uploads/2018/10/baletd_DSC4974.jpg",
    temperature: 70
)

hot_springs = Activity.create(
    name: "Hot Springs", 
    description: "Visit a hot spring", 
    photo: "https://theknow.denverpost.com/wp-content/uploads/2018/12/7029688-1080x680.jpg",
    temperature: 45
)

ice_fishing = Activity.create(
    name: "Ice Fish", 
    description: "Go ice fishing", 
    photo: "https://www.visitlakegeorge.com/sites/default/files/styles/1600x1000/public/2018-12/ice%20fishing.jpg?itok=R1MKJAWR",
    temperature: 10
)

rock_climb = Activity.create(
    name: "Rock climb", 
    description: "Go rock climbing", 
    photo: "https://natgeo.imgix.net/factsheets/thumbnails/margo-hayes-siurana-Pati-Wall-practice-run.adapt.1900.1.jpg?auto=compress,format&w=1024&h=560&fit=crop",
    temperature: 70
)

road_bike = Activity.create(
    name: "Road bike", 
    description: "Go road biking", 
    photo: "https://outsidebuzz.com/wp-content/uploads/2019/03/Best-Road-Bikes-for-Women.jpg",
    temperature: 65
)

user1 = User.create(name: "Main user")

plan1 = Plan.create(user: user1)

ActivityPlan.create(plan: plan1, activity: mtb)