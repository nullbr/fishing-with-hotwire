#
# BAITS
#

fat_rap = Bait.create!(
  name: 'Fat Rap',
  category: 'Crankbait',
  image: 'fat-rap.png',
  description: "It happens to the best of us: you've got what looks like perfect fishing conditions and yet the fish seem finicky. Reach for a Fat Rap and crank in the fish! 🐟"
)

yummy_gummy = Bait.create!(
  name: 'Yummy Gummy',
  category: 'Softbait',
  image: 'yummy-gummy.png',
  description: "This bait might not look soft and yummy to you, but that's only because you're not a fish! 😜"
)

fire_tiger = Bait.create!(
  name: 'Fire Tiger',
  category: 'Spinner',
  image: 'fire-tiger.png',
  description: "Muddy water or clear water, it makes no difference with this spinner. The Fire Tiger is versatile, consistent, and oh so tempting. 💙"
)

mr_mustache = Bait.create!(
  name: 'Mr. Mustache',
  category: 'Popper',
  image: 'mr-mustache.png',
  description: "Splish, splash, this popper has your back! C'mon fish, check out Mr. Mustache."
)

strike_king = Bait.create!(
  name: 'Strike King',
  category: 'Crankbait',
  image: 'strike-king.png',
  description: "With the perfect wobble, just the right amount of buoyancy, and spot-on coloring, this bait is the King. 🐡"
)

rooster_tail = Bait.create!(
  name: 'Rooster Tail',
  category: 'Spinner',
  image: 'rooster-tail.png',
  description: "There's a good reason this colorful, spinning bait has been around since the 1950s: it flat out produces. It's also one of Nicole's favorites. 😉"
)

marabou_muddler = Bait.create!(
  name: 'Marabou Muddler',
  category: 'Fly',
  image: 'marabou-muddler.png',
  description: "There's no sense muddling around with other baits in fast, deep water. Tie on a Marabou Muddler to get where the fish are, fast!"
)

bucktail = Bait.create!(
  name: 'Bucktail',
  category: 'Spinner',
  image: 'bucktail.png',
  description: "Time-tested and angler-approved... by the US Navy! During World War II, emergency kits for sailors and pilots included a bucktail along with fishing line. Rumor has it, this bait is still used as survival equipment by Navy Seals today. 🌠"
)

daredevil = Bait.create!(
  name: 'Daredevil',
  category: 'Spoon',
  image: 'daredevil.png',
  description: "Take your pick: use your great-granddaddy's, your granddaddy's, your daddy's, or your own spoon. This wiggly, wobbly bait has been a staple in tackle boxes for generations."
)

lemon_drop = Bait.create!(
  name: 'Lemon Drop',
  category: 'Softbait',
  image: 'lemon-drop.png',
  description: "This one's an eye catcher for sure! 😲 It's perfect for getting the fleeting attention of fish in your favorite dark hole. "
)

krocodile = Bait.create!(
  name: 'Krocodile',
  category: 'Spoon',
  image: 'krocodile.png',
  description: "🐊 The versatility of this spoon makes it a favorite. Whether you cast and retrieve with it, use it as a jig, or simply troll with it, you'll use it season after season. "
)

purple_reign = Bait.create!(
  name: 'Purple Reign',
  category: 'Spinner',
  image: 'purple-reign.png',
  description: "This purple beauty will help you reign in the big fish of the deep. Fish with it by itself or rig it with a rubber worm, live shrimp, or other natural baits."
)

#
# USERS
#

mike = User.create!(
  username: 'Mike',
  password: 'secret'
)

nicole = User.create!(
  username: 'Nicole',
  password: 'secret'
)

#
# TACKLE BOX ITEMS
#

TackleBoxItem.create!([
  {
    user: mike,
    bait: fat_rap
  },
  {
    user: mike,
    bait: yummy_gummy
  },
  {
    user: mike,
    bait: strike_king
  },
  {
    user: mike,
    bait: marabou_muddler
  },
  {
    user: mike,
    bait: purple_reign
  },
  {
    user: nicole,
    bait: fire_tiger
  },
  {
    user: nicole,
    bait: bucktail
  },
  {
    user: nicole,
    bait: krocodile
  },
  {
    user: nicole,
    bait: rooster_tail
  },
  {
    user: nicole,
    bait: lemon_drop
  },
])

#
# FISH CATCHES
#

FishCatch.create!([
  {
    user: mike,
    bait: fat_rap,
    species: "Walleye",
    weight: 3.0,
    length: 18.0,
    created_at: 3.days.ago
  },
  {
    user: mike,
    bait: fat_rap,
    species: "Brown Trout",
    weight: 5.5,
    length: 24.0,
    created_at: 5.days.ago
  },
  {
    user: mike,
    bait: fat_rap,
    species: "Lake Trout",
    weight: 3.5,
    length: 19.0,
    created_at: 7.days.ago
  },
  {
    user: mike,
    bait: fat_rap,
    species: "Rainbow Trout",
    weight: 4.5,
    length: 22.5,
    created_at: 1.days.ago,
  },
  {
    user: mike,
    bait: yummy_gummy,
    species: "Largemouth Bass",
    weight: 4.25,
    length: 18.5,
    created_at: 4.days.ago
  },
  {
    user: mike,
    bait: yummy_gummy,
    species: "Walleye",
    weight: 5.5,
    length: 21,
    created_at: 3.days.ago
  },
  {
    user: mike,
    bait: strike_king,
    species: "Walleye",
    weight: 4.0,
    length: 21.0,
    created_at: 2.days.ago
  },
  {
    user: mike,
    bait: strike_king,
    species: "Brown Trout",
    weight: 5.25,
    length: 22.5,
    created_at: 3.days.ago
  },
  {
    user: mike,
    bait: strike_king,
    species: "Rainbow Trout",
    weight: 3.5,
    length: 18.5,
    created_at: 4.days.ago
  },
  {
    user: mike,
    bait: purple_reign,
    species: "Bluegill",
    weight: 1.5,
    length: 8.5,
    created_at: 4.days.ago
  },
  {
    user: nicole,
    bait: fire_tiger,
    species: "Brown Trout",
    weight: 4.25,
    length: 22.0,
    created_at: 6.days.ago
  },
  {
    user: nicole,
    bait: fire_tiger,
    species: "Rainbow Trout",
    weight: 3.5,
    length: 19.0,
    created_at: 5.days.ago
  },
  {
    user: nicole,
    bait: rooster_tail,
    species: "Largemouth Bass",
    weight: 3.0,
    length: 18.0,
    created_at: 2.days.ago
  },
  {
    user: nicole,
    bait: krocodile,
    species: "Rainbow Trout",
    weight: 2.5,
    length: 16.5,
    created_at: 3.days.ago
  },
  {
    user: nicole,
    bait: krocodile,
    species: "Walleye",
    weight: 2.0,
    length: 12.0,
    created_at: 2.days.ago
  },
  {
    user: nicole,
    bait: bucktail,
    species: 'Smallmouth Bass',
    weight: 3.25,
    length: 14.0,
    created_at: 8.days.ago
  }
])

#
# RANDOM USERS AND CATCHES
#

baits = Bait.all

names = %w(Macie Grace Walter Erin Sam Brynn Keith Wade Leroy Lucy)
names.each do |name|
  user =
    User.create!(
      username: name,
      password: 'secret'
    )

  baits.sample(rand(2..5)).each do |bait|
    TackleBoxItem.create!(
      user: user,
      bait: bait
    )

    rand(1..3).times do
      FishCatch.create!(
        user: user,
        bait: bait,
        species: FishCatch::SPECIES.sample,
        weight: rand(1..10),
        length: rand(10..30),
        created_at: rand(2..20).days.ago
      )
    end
  end
end

#
# RANDOM LIKES
#

users = User.all

FishCatch.all.each do |fish_catch|
  users.sample(rand(0..9)).each do |user|
    unless user == fish_catch.user
      Like.create!(user: user, fish_catch: fish_catch)
    end
  end
end

FishCatch.where(user: nicole).each do |fish_catch|
  Like.create!(user: mike, fish_catch: fish_catch)
end
