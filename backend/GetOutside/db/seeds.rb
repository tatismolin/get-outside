# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ActivityPlan.destroy_all
Plan.destroy_all
User.destroy_all
Activity.destroy_all


ice_skate = Activity.create(
    name: "Ice Skate", 
    description: "Go ice skating", 
    photo: "https://images.rove.me/w_1920,q_85/pj3shpbmwww4eatjhwlq/banff-skating-on-lake-louise.jpg",
    temperature: 15
)

ski = Activity.create(
    name: "Ski", 
    description: "Go skiing", 
    photo: "https://images.unsplash.com/photo-1551698618-1dfe5d97d256?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80",
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
    photo: "https://static.rootsrated.com/image/upload/s--bWT5bnGL--/t_rr_large_natural/hylybshrpqdzhenhxk0q.jpg",
    temperature: 55
)

swim = Activity.create(
    name: "Swim", 
    description: "Go for a swim", 
    photo: "https://www.brilliantbusinessthings.com/wp-content/uploads/2015/07/drowning-not-waving.jpg",
    temperature: 90
)

# fourteener = Activity.create(
#     name: "Climb a 14er", 
#     description: "Climb a 14er", 
#     photo: "https://res.cloudinary.com/sagacity/image/upload/c_crop,h_720,w_1080,x_0,y_0/c_limit,dpr_3.0,f_auto,fl_lossy,q_80,w_500/Capitol_Peak.2_pu63bo.jpg",
#     temperature: 70
# )

playground = Activity.create(
    name: "Play", 
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
    photo: "https://www.choicehotels.com/cms/images/choice-hotels/demand-articles/hot-springs-tucson/hot-springs-tucson.jpg",
    temperature: 45
)

ice_fishing = Activity.create(
    name: "Ice Fish", 
    description: "Go ice fishing", 
    photo: "https://www.visitlakegeorge.com/sites/default/files/styles/1600x1000/public/2018-12/ice%20fishing.jpg?itok=R1MKJAWR",
    temperature: 15
)

rock_climb = Activity.create(
    name: "Rock Climb", 
    description: "Go rock climbing", 
    photo: "https://www.colorado.com/sites/default/files/styles/1000x685/public/climbing.jpg?itok=cFTUlMVQ",
    temperature: 65
)

road_bike = Activity.create(
    name: "Road Bike", 
    description: "Go road biking", 
    photo: "https://outsidebuzz.com/wp-content/uploads/2019/03/Best-Road-Bikes-for-Women.jpg",
    temperature: 65
)

spelunk = Activity.create(
    name: "Spelunk", 
    description: "Explore some caves with flashlights", 
    photo: "https://sportsandtravel.com.sg/wp-content/uploads/2019/07/shutterstock_624056801-1024x683.jpg",
    temperature: 55
)

cross_country_ski = Activity.create(
    name: "Cross Country Ski", 
    description: "Go cross country skiing", 
    photo: "https://cottagelife.com/wp-content/uploads/2015/01/shutterstock_95551669-2-copy-e1421343860559.jpg",
    temperature: 15
)

walk_dogs = Activity.create(
    name: "Walk the Dogs", 
    description: "Take the dogs for a walk", 
    photo: "https://dailygazette.com/sites/default/files/styles/gallery_image/public/2019-05/051719_SARDogWalkers_EM-03.jpg?itok=LXr2fUcN",
    temperature: 50
)

whitewater_raft = Activity.create(
    name: "Whitewater Raft", 
    description: "Go whitewater rafting", 
    photo: "https://whitewater.net/wp-content/uploads/2016/07/3253442.jpg",
    temperature: 80
)

jog = Activity.create(
    name: "Jog", 
    description: "Go for a jog", 
    photo: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/young-woman-jogging-through-the-fall-park-rear-shot-royalty-free-image-700592770-1538491624.jpg?crop=1xw:0.999xh;center,top&resize=480:*",
    temperature: 60
)

meditate = Activity.create(
    name: "Meditate", 
    description: "Find a quiet place to meditate", 
    photo: "https://www.newharbinger.com/sites/default/files/styles/article_image_main/public/article_assets/meditation_rd.png?itok=zuw1AQRQ",
    temperature: 80
)

yoga = Activity.create(
    name: "Yoga", 
    description: "Do yoga", 
    photo: "http://downtownsurreybia.com/wp-content/uploads/yoga-outside2.jpg",
    temperature: 80
)

sup = Activity.create(
    name: "SUP", 
    description: "Stand up paddleboard", 
    photo: "https://image.redbull.com/rbcom/052/2019-03-15/5673eda3-0c54-4ed2-aaf2-26f583b4931a/0012/0/0/4/731/1100/1500/1/thunder-lake-heli-sup.jpeg",
    temperature: 85
)

picnic = Activity.create(
    name: "Picnic", 
    description: "Have a picnic at a park", 
    photo: "http://static1.squarespace.com/static/58e7c3d9f5e231613bed29ef/599f36748fd4d22e5e45730b/5cf7debc3fb7c10001617069/1559748383737/picnic.jpeg?format=1500w",
    temperature: 80
)

stargaze = Activity.create(
    name: "Stargaze", 
    description: "Go stargazing", 
    photo: "https://www.traveldailymedia.com/assets/2019/03/Stargazing-Hilton.jpg",
    temperature: 70
)

snowman = Activity.create(
    name: "Snowman", 
    description: "Build a snowman", 
    photo: "https://www.rd.com/wp-content/uploads/2016/12/06_how_build_perfect_snowman_best_practices_decorations_tatyana_tomsickova.jpg",
    temperature: 15
)

winter_camp = Activity.create(
    name: "Winter camp", 
    description: "Go winter camping", 
    photo: "https://www.switchbacktravel.com/sites/default/files/images/articles/Winter%20camping.jpg",
    temperature: 15
)

ice_hockey = Activity.create(
    name: "Ice Hockey", 
    description: "Play ice hockey", 
    photo: "https://www.avenuecalgary.com/wp-content/uploads/2019/01/Mountains-PondHockey1.jpg",
    temperature: 15
)

sunset = Activity.create(
    name: "Sunrise/Sunset", 
    description: "Watch the sun rise or set", 
    photo: "https://cdn.pixabay.com/photo/2017/12/29/12/48/sunset-3047540_960_720.jpg",
    temperature: 60
)

#  = Activity.create(
#     name: "", 
#     description: "", 
#     photo: "",
#     temperature: 
# )

user1 = User.create(name: "Main user")

plan1 = Plan.create(user: user1)

# ActivityPlan.create(plan: plan1, activity: mtb)