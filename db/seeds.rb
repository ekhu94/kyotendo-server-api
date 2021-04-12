Comment.destroy_all
Post.destroy_all
Forum.destroy_all
require 'json'

def loadForums
    forums = ['Nintendo Switch', 'Zelda', 'Mario Kart', 'Pokemon', 'Animal Crossing', 'Super Smash Bros']
    i = 0
    while i < 6
        Forum.create(name: forums[i], slug: forums[i].split(' ').join(''))
        i += 1
    end
end

def loadNintendoSwitchPosts
    #* Discussion Posts
    disc_file = open('./db/db_nintendo_switch_disc.json')
    disc_content = disc_file.read
    disc_json = JSON.parse(disc_content)

    disc_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Nintendo Switch')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_text: i['data']['children'][0]['data']['selftext'],
            post_type: 'discussion',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Image Posts
    img_file = open('./db/db_nintendo_switch_img.json')
    img_content = img_file.read
    img_json = JSON.parse(img_content)

    img_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Nintendo Switch')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Video Posts
    vid_file = open('./db/db_nintendo_switch_vid.json')
    vid_content = vid_file.read
    vid_json = JSON.parse(vid_content)

    vid_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Nintendo Switch')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'video',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end
end

def loadZeldaPosts
    #* Discussion Posts
    disc_file = open('./db/db_zelda_disc.json')
    disc_content = disc_file.read
    disc_json = JSON.parse(disc_content)

    disc_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Zelda')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_text: i['data']['children'][0]['data']['selftext'],
            post_type: 'discussion',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Image Posts
    img_file = open('./db/db_zelda_img.json')
    img_content = img_file.read
    img_json = JSON.parse(img_content)

    img_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Zelda')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Video Posts
    vid_file = open('./db/db_zelda_vid.json')
    vid_content = vid_file.read
    vid_json = JSON.parse(vid_content)

    vid_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Zelda')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'video',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end
end

def loadMarioKartPosts
    #* Discussion Posts
    disc_file = open('./db/db_mario_kart_disc.json')
    disc_content = disc_file.read
    disc_json = JSON.parse(disc_content)

    disc_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Mario Kart')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_text: i['data']['children'][0]['data']['selftext'],
            post_type: 'discussion',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Image Posts
    img_file = open('./db/db_mario_kart_img.json')
    img_content = img_file.read
    img_json = JSON.parse(img_content)

    img_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Mario Kart')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Video Posts
    vid_file = open('./db/db_mario_kart_vid.json')
    vid_content = vid_file.read
    vid_json = JSON.parse(vid_content)

    vid_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Mario Kart')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'video',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end
end

def loadPokemonPosts
    #* Discussion Posts
    disc_file = open('./db/db_pokemon_disc.json')
    disc_content = disc_file.read
    disc_json = JSON.parse(disc_content)

    disc_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Pokemon')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_text: i['data']['children'][0]['data']['selftext'],
            post_type: 'discussion',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Image Posts
    img_file = open('./db/db_pokemon_img.json')
    img_content = img_file.read
    img_json = JSON.parse(img_content)

    img_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Pokemon')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Video Posts
    vid_file = open('./db/db_pokemon_vid.json')
    vid_content = vid_file.read
    vid_json = JSON.parse(vid_content)

    vid_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Pokemon')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'video',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end
end

def loadAnimalCrossingPosts
    #* Discussion Posts
    disc_file = open('./db/db_animal_crossing_disc.json')
    disc_content = disc_file.read
    disc_json = JSON.parse(disc_content)

    disc_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Animal Crossing')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_text: i['data']['children'][0]['data']['selftext'],
            post_type: 'discussion',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Image Posts
    img_file = open('./db/db_animal_crossing_img.json')
    img_content = img_file.read
    img_json = JSON.parse(img_content)

    img_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Animal Crossing')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Video Posts
    vid_file = open('./db/db_animal_crossing_vid.json')
    vid_content = vid_file.read
    vid_json = JSON.parse(vid_content)

    vid_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Animal Crossing')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'video',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end
end

def loadSmashBrosPosts
    #* Discussion Posts
    disc_file = open('./db/db_smash_bros_disc.json')
    disc_content = disc_file.read
    disc_json = JSON.parse(disc_content)

    disc_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Super Smash Bros')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_text: i['data']['children'][0]['data']['selftext'],
            post_type: 'discussion',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Image Posts
    img_file = open('./db/db_smash_bros_img.json')
    img_content = img_file.read
    img_json = JSON.parse(img_content)

    img_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Super Smash Bros')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end

    #* Video Posts
    vid_file = open('./db/db_smash_bros_vid.json')
    vid_content = vid_file.read
    vid_json = JSON.parse(vid_content)

    vid_json.each do |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Super Smash Bros')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content_url: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'video',
            upvotes: rand(0..500),
            user: User.find(user_id),
            forum: forum
        )
    end
end

def loadComments
    comments_collection = [
        "I'll take it! Colours was a lot of fun", "It would be nice if Sega remastered Unleashed as well, it's underrated but it's great and aged really well.", "i mean . . a gaming company thinks about making new games and continuing their successful game franchise.", "they are bringing this up because of the report that all Sony want's to do now is big AAA games are no longer wants to do new stuff", "I’m still waiting for my OoT for the Switch. Don’t get me wrong. I love Nintendo , but Jesus Christ ! Get with it !", "the 3DS is the best version of it so far. If it were to be put on the Switch, it'd already require a full remake, like Link's Awakening.", "Why even bother waiting for Nintendo do things when you can just get a controller that clips onto your phone and emulate it. Instead of dreaming for some thing that may never happen just emulate it on your phone. You gotta take action on your own instead of waiting for some one to hand you something you want.", "Thanks for you response. Would you have any videos or links you’d recommend for someone like me who doesn’t know how do all that. How should I get started. And does that me I have to jail break my phone or pay service? :) cheers", "Full price of course", "I'd much rather keep playing the 3DS version and have them make a new game based on similar art style.", "What an eloquent non-statement.", "We need the Fire Emblem treatment for F-Zero or Star Fox. Most likely won't happen, but we do dream about it!", "Nintendo doesn't appeal to japanese market at all. Most of their titles appeal to worldwide public.", "So turn everything into waifus? I'm on board with that", "The games were always good. They mainly got newfound attention because of pretty anime people, but also because advertising and acclaim for Awakening did it wonders.", "I feel like the Switch is a bit like a rebirth of Nintendo in the sense that it brings back old fans as well as new audience. I feel any old franchise will have a solid shot given a good remake/sequel.", "I mean, yeah, sure we see the same thing happening to Xenoblade atm. The thing about their currently abandoned IPs is that it's pretty likely that none of their current dev teams are all that invested in making new games in the series.", "Furukawa, please fix your mediocre online infrastructure and provide more standard features for your existing product. Then, and only then, worry about new ideas.", "Wario Land, give me Wario land", "Give the people more Donkey Kong!", "They need to address those joycon joysticks issues for me to buy another system.", "*cries in Metroid and Wario", "Didnt the creator of mother say he didnt want any games after mother 3? Or am I just remembering something wrong", "I don't want a new console I want the Switch forever.", "Every 60 seconds in Africa a minute passes.", "Probably just like any game with multiple of the same series on a platform. Some will stay, some will move over to the other one.", "Salmon Run is almost certainly not going to be in splatoon 3 either. My guess is that 3 is not going to have the basics from 2 and nintendo will treat them like complementary titles", "I wonder if Splatoon 2 will become the Melee of the Splatoon series", "It'll be interesting to see how it goes. Especially since even the original Splatoon on the Wii U still has an incredibly active online community.", "They could do a Overwatch and allow splatoon 2 players to play multiplayer with Splatoon 3. Without the new weapons and cosmetics of course.", "I thought Nintendo mothballed 2 a long time ago after Final Fest or whatever it was called.", "I find Splatoon 2 multiplayer games in like 10 seconds", "Everyone currently playing 2 will play on 3, no worries there. Then you will have millions of new players playing on 3. It’ll be a good time", "*squints when I see the girl in the cat hoodie* ... Gaia?", "Looks amazing, good to have a release date now. I'll revisit the first one before this comes out since by the looks of this trailer there's going to be some call backs seeing some familiar faces.", "I’ve just accepted the fact that I no longer finish games.", "I played the og and mobile ports but heard a lot of issues with the switch one, is that right?", "The switch one is a port of the mobile port. So with a stylus and screen protector in handheld it's fine. Docked is rough", "I played it a couple months back and didn’t have any issues. Some of the attacks were a bit inconsistent when swinging the joycons but it wasn’t a big deal", "Wait, it starts today! Heck yeah!", "Good to know. If any of you are also PS gamers they’re giving out a 3 month code to Funimation for downloading the app to your console.", "Do se know if it has the original English VA?", "I was just thinking TWEWY is ripe for an anime, they have a great cast of characters to work with!", "What anime? When? Always wanted to play that game because of the visuals but know nothing of it.", "Do you think it’s worthwhile to play the switch port?", "Game was super tedious and just not worth fighting through.", "shame since devolver usually is synonymous with good games", "The pixel art was beautiful though.", "I know it’s not switch related but I definitely had to uninstall Assassins Creed Unity. Bug that literally during quick time events would you to lose and not be able to progress. I feel like 80% of people who played that game uninstalled it.", "Wife and I enjoyed the previous levels a lot. Tried real hard to give that level a chance but we got destroyed so many times it just got tedious.", "Yep, I love the graphics and music but I just couldn't deal with how frustrating it was.", "I didn’t actually uninstall it but I ran into a game-ruining bug in Pumpkin Jack, got really frustrated and never played it again.", "Moonlighter. A good game really but not my cup of tea.", "Took them too long to update the glithcy game. lost my progress numerous times. They updated it around the time when Hades came out.", "Most of the game is fun. Great gameplay mechanics, exploration is amusing and I love the art style.", "Glad they're adding in casual mode but honestly after that rough spot I don't think I'm coming back.", "Just wait...there are days I do nothing but hunt Guardians and Lynels.", "You’ll get there. I got the game day one, but it was a bit before I went on big game hunting sprees.", "There's nothing quite like the first time", "Leroy jenkins a lynel 🤷", "Stun them with a headshot, then get on their back with the highest damage weapon you have and just beat the tar out of them. Rinse and repeat. Weapons don’t break when hitting them that way.", "haram! /j", "Welp. Link, we couldn’t read your application, but we are happy to welcome you as the newest member here at Femboy Hooters", "Hylian Honkers", "Have the Strength to challenge any foe, have the Wisdom to know when to run and have the Courage to stay and fight.", "Update, instead of killing it, i decided to try and kill a blue Hinox using only remote bombs. Somehow it worked.", "Even with a bad shield?", "Nice :D", "Good luck if you ever try it!", "Hahaha that's great news!", "I do. yeet", "Do it, he's too dangerous to be left alive", "The flow of time is always cruel... Its speed seems different for each person, but no one can change it... A thing that doesn't change with time is a memory of younger days...", "90’s were a better time. Only worries were whether I wanted chocolate chip or blueberry Eggo, yellow or red Barq’s Creme Soda, Charmander or Bulbasaur.", "It's one of the only games I still have the complete box and manual of, together with N64 MM.", "I played oot recently on 3DS and this line made me pause and think on it. Funny because I’ve never really thought much of it. Guess I’m getting older.", "Not to be a debby downer (the quote is cool) but our memories have to be recreated every time we think about it.", "1998 continues to be in all our hearts thanks to this game and also thanks to this game we can share how our hearts felt in 1998. Great post. Thank you.", "Right in the feels.", "I miss it too :)", "Damn. Just got inexplainable urge to fire up my N64.", "Every once of sound from this game is engrained into my head so I hear the music associated with this scene as well as the dialog box noises", "We strive for complexity, but relish in simplicity", "Lmao this is my go to when I’m using a joke mii I made like Borat", "I have something to say..... I'm using tilt controls!", "F for the guy hit by a blue shell on the line", "I can’t imagine how they were feeling lmao", "No no no, that’s not how that’s supposed to work!", "Absolutely glorious. I also appreciate the discipline to hold off on using the Star for a few seconds. A lot of players would button-mash there even without a threat around them.", "I may not know much about anything, but that's the stupidest way to make components I've ever seen!", "At the same time though, there is the worry that someone lightnings and you lose it without using it.", "I actually used it when I saw I was drifting into the barrier and I didn’t wanna lose any speed, but yeah it’s always good to wait a bit", "Well it's only natural. For people to get mario karted there must always be other people to get reverse mario karted. It's the law of mario kart.", "For every Mario kart there’s an equal and opposite Mario kart", "Let’s make it happen", "Who's gonna do?", "that's awesome! You did a fantastic job", "thats the coolest thing ive seen in a long time", "Cute!", "Awesome!", "that's pretty good!", "Here we go!!!!", "That's really damn cool! Was it hard to make it that small?", "Niiiice", "Awesome! This is cool!!!!", "Lol glad I could help", "Well done! Sometimes the Mario Kart gods smile.", "yeah 150 is unplayable but I was getting all the stars", "Perfect!", "This made my booty pucker up", "😘👌 Thank you for sharing this rare gift", "I can’t do it even if I had a mushroom 😂", "Purpose?", "I wish there was a way to download islands and just move in with your villagers.", "I just scrolled through that sub and even they are more creative than me, I feel insulted", "facts", "But I thought he was the pokédex!", "So you're telling me Blathers is a pokemon...", "First thing I thought of when I first saw that pokemon!", "The first one isn't from Nintendo... It's from Love Live", "when you walk in tomorrow, they’ll have clothespins over their noses", "You smell smell", "What do you have to do to get the upgraded nooks cranny?", "That’s so funny!!", "Looks like you’re Stinky!", "Also if anyone has any ideas of what to put in the middle comment them! Idk if I like the butterfly.", "Thanks!!", "A statue would be pretty cool.", "i got 6 stocked by lucretio at the one local i had the chance to go to before covid, dudes insane. gotta root for him now!", "How is that pronounced?", "Let's go ඞ", "Flawless logic! Perfection!", "It's wifi buffs, Robin is underrated but not at all top 32 3 majors tier", "hmm......that's weird....", "I'd also add using up-B to push advantage and as a landing mix up to minimize disadvantage.", "Great advice, thanks! I definitely need a feel for the bread and butter combos, so hopefully that comes with time", "What are the best ways to set up for the jab lock? I think ftilt might be good at lower percents iirc.", "choochoochoo....", "There's a lot of good tips here, but another one is just to build up confidence. ", "What do you have against Mario?", "it is me yes lol", "I'm beginning to see a trend I never knew existed...", "Reported for Mario abuse.", "Your a duck and im a frog :D", "Im actually proud that people like him exist", "Nah he’s just the next dlc", "Hes had it too good for too long", "He’s probably the guy in charge of the cinematic trailers whenever a new DLC character is revealed", "His moustache?", "Idk, happens to me when I share links on mobile tho", "I really, really, really like this image", "Aw man that really brings me back.", "And then there's the... Other... Version of the Ultimate Showdown.", "That's the only version if you ask me!!", "explain", "Wow lol", "I can't say I didn't expect it to be NSFW", "At this point is End of the World and Ultimate Showdown really nostalgia, considering they're always posted in nostalgic animation threads?", "Now, Schfifty-five, that's a little better.", "Oh wow I don't think I've ever seen the full video before I've always just saw the gif.", "I love that thing, this is awesome.", "Damn so 23 years, even older than I thought.", "Thank you for linking the ORIGINAL original lol", "Damn I feel awful for not doing enough research, but thank you for linking it. I will fix it on all my other posts", "Face cracking sound was beautiful. Also, goddamn falcon swole, looks like Garou from OPM.", "Works in every game with roaming legendaries.", "If only I knew about this back in Emerald or Platinum...", "Now you know, and knowing is half the battle!", "It does. Go to their Pokedex entry and it shows their location on the map", "... ... ... Words are unnecessary!", "He never really was, that was all fanart due to Red being silent in the games.", "Which is exactly why I would never want to watch a movie about the playable character", "Has to lose sometimes to be likeable.", "I think there's also the mystique of a player character who returns as a major threat.", "And he does it without saying a word.", "I think a decent bit of that can be attributed to the Twitch Plays Pokemon lore as well", "Is it because getting into it is pretty daunting, or maybe it just looks even more childish compared to the anime?", "I bless the rains down in Unova...", "I totally agree with this for the most part, but to me there are rare instances where watching a 'Mary-Sue' sort of character can be fun.", "It's just like a game starting you at the soon to be final boss.", "That would be great to implement in a new Gen.", "Are we talking about the one from Viridian forest?", "I wish the dude with the full magikarp team upgraded to a full team of gyrados if you wait until the end", "I literally fought him last night because I skipped him the first time around", "Plus all of the time you spent earning that stuff.", "Are vitamins unlimited use (till they have EV cap)?", "Speaker of the truth", "I just want a game that's a mix between the classic beat everyone in this town pokemon game and pokemon go.", "I'd love a little world building like that. Not FF8 scaling by any means. But would be neat", "Those trainers can get pretty scary when you’re playing a randomizer.", "Would be sweet", "I understood that reference", "Can someone explain? Because it's the same speed, or?", "That’s borderline unplayable, jesus", "Oh no :(", "Dear god thats slowpoke slow lol", "I think because it takes a long time for the hp to go down", "I don't get it...", "Thanks! Only played it once so didn't remember that at all.", "Hate when it MISSES and then that caterpie gets a chance to tackle attack. The game is generous and lets it do a critical for 2 damage.", "Jokes on us, while you were doing all that, he was training. And now he’s ready."
    ]
    i = 0
    while i < comments_collection.length
        post_id = rand(Post.first.id..Post.last.id)
        Comment.create(content: comments_collection[i], post_id: post_id)
        i += 1
    end
end

loadForums
loadNintendoSwitchPosts
loadZeldaPosts
loadMarioKartPosts
loadPokemonPosts
loadAnimalCrossingPosts
loadSmashBrosPosts
loadComments