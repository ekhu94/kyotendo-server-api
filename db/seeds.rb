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
    comments_collection1 = [
        "I'll take it! Colours was a lot of fun", "It would be nice if Sega remastered Unleashed as well, it's underrated but it's great and aged really well.", "i mean . . a gaming company thinks about making new games and continuing their successful game franchise.", "they are bringing this up because of the report that all Sony want's to do now is big AAA games are no longer wants to do new stuff", "I’m still waiting for my OoT for the Switch. Don’t get me wrong. I love Nintendo , but Jesus Christ ! Get with it !", "the 3DS is the best version of it so far. If it were to be put on the Switch, it'd already require a full remake, like Link's Awakening.", "Why even bother waiting for Nintendo do things when you can just get a controller that clips onto your phone and emulate it. Instead of dreaming for some thing that may never happen just emulate it on your phone. You gotta take action on your own instead of waiting for some one to hand you something you want.", "Thanks for you response. Would you have any videos or links you’d recommend for someone like me who doesn’t know how do all that. How should I get started. And does that me I have to jail break my phone or pay service? :) cheers", "Full price of course", "I'd much rather keep playing the 3DS version and have them make a new game based on similar art style.", "What an eloquent non-statement.", "We need the Fire Emblem treatment for F-Zero or Star Fox. Most likely won't happen, but we do dream about it!", "Nintendo doesn't appeal to japanese market at all. Most of their titles appeal to worldwide public.", "So turn everything into waifus? I'm on board with that", "The games were always good. They mainly got newfound attention because of pretty anime people, but also because advertising and acclaim for Awakening did it wonders.", "I feel like the Switch is a bit like a rebirth of Nintendo in the sense that it brings back old fans as well as new audience. I feel any old franchise will have a solid shot given a good remake/sequel.", "I mean, yeah, sure we see the same thing happening to Xenoblade atm. The thing about their currently abandoned IPs is that it's pretty likely that none of their current dev teams are all that invested in making new games in the series.", "Furukawa, please fix your mediocre online infrastructure and provide more standard features for your existing product. Then, and only then, worry about new ideas.", "Wario Land, give me Wario land", "Give the people more Donkey Kong!", "They need to address those joycon joysticks issues for me to buy another system.", "*cries in Metroid and Wario", "Didnt the creator of mother say he didnt want any games after mother 3? Or am I just remembering something wrong", "I don't want a new console I want the Switch forever.", "Every 60 seconds in Africa a minute passes.", "Probably just like any game with multiple of the same series on a platform. Some will stay, some will move over to the other one.", "Salmon Run is almost certainly not going to be in splatoon 3 either. My guess is that 3 is not going to have the basics from 2 and nintendo will treat them like complementary titles", "I wonder if Splatoon 2 will become the Melee of the Splatoon series", "It'll be interesting to see how it goes. Especially since even the original Splatoon on the Wii U still has an incredibly active online community.", "They could do a Overwatch and allow splatoon 2 players to play multiplayer with Splatoon 3. Without the new weapons and cosmetics of course.", "I thought Nintendo mothballed 2 a long time ago after Final Fest or whatever it was called.", "I find Splatoon 2 multiplayer games in like 10 seconds", "Everyone currently playing 2 will play on 3, no worries there. Then you will have millions of new players playing on 3. It’ll be a good time", "*squints when I see the girl in the cat hoodie* ... Gaia?", "Looks amazing, good to have a release date now. I'll revisit the first one before this comes out since by the looks of this trailer there's going to be some call backs seeing some familiar faces.", "I’ve just accepted the fact that I no longer finish games.", "I played the og and mobile ports but heard a lot of issues with the switch one, is that right?", "The switch one is a port of the mobile port. So with a stylus and screen protector in handheld it's fine. Docked is rough", "I played it a couple months back and didn’t have any issues. Some of the attacks were a bit inconsistent when swinging the joycons but it wasn’t a big deal", "Wait, it starts today! Heck yeah!", "Good to know. If any of you are also PS gamers they’re giving out a 3 month code to Funimation for downloading the app to your console.", "Do se know if it has the original English VA?", "I was just thinking TWEWY is ripe for an anime, they have a great cast of characters to work with!", "What anime? When? Always wanted to play that game because of the visuals but know nothing of it.", "Do you think it’s worthwhile to play the switch port?", "Game was super tedious and just not worth fighting through.", "shame since devolver usually is synonymous with good games", "The pixel art was beautiful though.", "I know it’s not switch related but I definitely had to uninstall Assassins Creed Unity. Bug that literally during quick time events would you to lose and not be able to progress. I feel like 80% of people who played that game uninstalled it.", "Wife and I enjoyed the previous levels a lot. Tried real hard to give that level a chance but we got destroyed so many times it just got tedious.", "Yep, I love the graphics and music but I just couldn't deal with how frustrating it was.", "I didn’t actually uninstall it but I ran into a game-ruining bug in Pumpkin Jack, got really frustrated and never played it again.", "Moonlighter. A good game really but not my cup of tea.", "Took them too long to update the glithcy game. lost my progress numerous times. They updated it around the time when Hades came out.", "Most of the game is fun. Great gameplay mechanics, exploration is amusing and I love the art style.", "Glad they're adding in casual mode but honestly after that rough spot I don't think I'm coming back.", "Just wait...there are days I do nothing but hunt Guardians and Lynels.", "You’ll get there. I got the game day one, but it was a bit before I went on big game hunting sprees.", "There's nothing quite like the first time", "Leroy jenkins a lynel 🤷", "Stun them with a headshot, then get on their back with the highest damage weapon you have and just beat the tar out of them. Rinse and repeat. Weapons don’t break when hitting them that way.", "haram! /j", "Welp. Link, we couldn’t read your application, but we are happy to welcome you as the newest member here at Femboy Hooters", "Hylian Honkers", "Have the Strength to challenge any foe, have the Wisdom to know when to run and have the Courage to stay and fight.", "Update, instead of killing it, i decided to try and kill a blue Hinox using only remote bombs. Somehow it worked.", "Even with a bad shield?", "Nice :D", "Good luck if you ever try it!", "Hahaha that's great news!", "I do. yeet", "Do it, he's too dangerous to be left alive", "The flow of time is always cruel... Its speed seems different for each person, but no one can change it... A thing that doesn't change with time is a memory of younger days...", "90’s were a better time. Only worries were whether I wanted chocolate chip or blueberry Eggo, yellow or red Barq’s Creme Soda, Charmander or Bulbasaur.", "It's one of the only games I still have the complete box and manual of, together with N64 MM.", "I played oot recently on 3DS and this line made me pause and think on it. Funny because I’ve never really thought much of it. Guess I’m getting older.", "Not to be a debby downer (the quote is cool) but our memories have to be recreated every time we think about it.", "1998 continues to be in all our hearts thanks to this game and also thanks to this game we can share how our hearts felt in 1998. Great post. Thank you.", "Right in the feels.", "I miss it too :)", "Damn. Just got inexplainable urge to fire up my N64.", "Every once of sound from this game is engrained into my head so I hear the music associated with this scene as well as the dialog box noises", "We strive for complexity, but relish in simplicity", "Lmao this is my go to when I’m using a joke mii I made like Borat", "I have something to say..... I'm using tilt controls!", "F for the guy hit by a blue shell on the line", "I can’t imagine how they were feeling lmao", "No no no, that’s not how that’s supposed to work!", "Absolutely glorious. I also appreciate the discipline to hold off on using the Star for a few seconds. A lot of players would button-mash there even without a threat around them.", "I may not know much about anything, but that's the stupidest way to make components I've ever seen!", "At the same time though, there is the worry that someone lightnings and you lose it without using it.", "I actually used it when I saw I was drifting into the barrier and I didn’t wanna lose any speed, but yeah it’s always good to wait a bit", "Well it's only natural. For people to get mario karted there must always be other people to get reverse mario karted. It's the law of mario kart.", "For every Mario kart there’s an equal and opposite Mario kart", "Let’s make it happen", "Who's gonna do?", "that's awesome! You did a fantastic job", "thats the coolest thing ive seen in a long time", "Cute!", "Awesome!", "that's pretty good!", "Here we go!!!!", "That's really damn cool! Was it hard to make it that small?", "Niiiice", "Awesome! This is cool!!!!", "Lol glad I could help", "Well done! Sometimes the Mario Kart gods smile.", "yeah 150 is unplayable but I was getting all the stars", "Perfect!", "This made my booty pucker up", "😘👌 Thank you for sharing this rare gift", "I can’t do it even if I had a mushroom 😂", "Purpose?", "I wish there was a way to download islands and just move in with your villagers.", "I just scrolled through that sub and even they are more creative than me, I feel insulted", "facts", "But I thought he was the pokédex!", "So you're telling me Blathers is a pokemon...", "First thing I thought of when I first saw that pokemon!", "The first one isn't from Nintendo... It's from Love Live", "when you walk in tomorrow, they’ll have clothespins over their noses", "You smell smell", "What do you have to do to get the upgraded nooks cranny?", "That’s so funny!!", "Looks like you’re Stinky!", "Also if anyone has any ideas of what to put in the middle comment them! Idk if I like the butterfly.", "Thanks!!", "A statue would be pretty cool.", "i got 6 stocked by lucretio at the one local i had the chance to go to before covid, dudes insane. gotta root for him now!", "How is that pronounced?", "Let's go ඞ", "Flawless logic! Perfection!", "It's wifi buffs, Robin is underrated but not at all top 32 3 majors tier", "hmm......that's weird....", "I'd also add using up-B to push advantage and as a landing mix up to minimize disadvantage.", "Great advice, thanks! I definitely need a feel for the bread and butter combos, so hopefully that comes with time", "What are the best ways to set up for the jab lock? I think ftilt might be good at lower percents iirc.", "choochoochoo....", "There's a lot of good tips here, but another one is just to build up confidence. ", "What do you have against Mario?", "it is me yes lol", "I'm beginning to see a trend I never knew existed...", "Reported for Mario abuse.", "Your a duck and im a frog :D", "Im actually proud that people like him exist", "Nah he’s just the next dlc", "Hes had it too good for too long", "He’s probably the guy in charge of the cinematic trailers whenever a new DLC character is revealed", "His moustache?", "Idk, happens to me when I share links on mobile tho", "I really, really, really like this image", "Aw man that really brings me back.", "And then there's the... Other... Version of the Ultimate Showdown.", "That's the only version if you ask me!!", "explain", "Wow lol", "I can't say I didn't expect it to be NSFW", "At this point is End of the World and Ultimate Showdown really nostalgia, considering they're always posted in nostalgic animation threads?", "Now, Schfifty-five, that's a little better.", "Oh wow I don't think I've ever seen the full video before I've always just saw the gif.", "I love that thing, this is awesome.", "Damn so 23 years, even older than I thought.", "Thank you for linking the ORIGINAL original lol", "Damn I feel awful for not doing enough research, but thank you for linking it. I will fix it on all my other posts", "Face cracking sound was beautiful. Also, goddamn falcon swole, looks like Garou from OPM.", "Works in every game with roaming legendaries.", "If only I knew about this back in Emerald or Platinum...", "Now you know, and knowing is half the battle!", "It does. Go to their Pokedex entry and it shows their location on the map", "... ... ... Words are unnecessary!", "He never really was, that was all fanart due to Red being silent in the games.", "Which is exactly why I would never want to watch a movie about the playable character", "Has to lose sometimes to be likeable.", "I think there's also the mystique of a player character who returns as a major threat.", "And he does it without saying a word.", "I think a decent bit of that can be attributed to the Twitch Plays Pokemon lore as well", "Is it because getting into it is pretty daunting, or maybe it just looks even more childish compared to the anime?", "I bless the rains down in Unova...", "I totally agree with this for the most part, but to me there are rare instances where watching a 'Mary-Sue' sort of character can be fun.", "It's just like a game starting you at the soon to be final boss.", "That would be great to implement in a new Gen.", "Are we talking about the one from Viridian forest?", "I wish the dude with the full magikarp team upgraded to a full team of gyrados if you wait until the end", "I literally fought him last night because I skipped him the first time around", "Plus all of the time you spent earning that stuff.", "Are vitamins unlimited use (till they have EV cap)?", "Speaker of the truth", "I just want a game that's a mix between the classic beat everyone in this town pokemon game and pokemon go.", "I'd love a little world building like that. Not FF8 scaling by any means. But would be neat", "Those trainers can get pretty scary when you’re playing a randomizer.", "Would be sweet", "I understood that reference", "Can someone explain? Because it's the same speed, or?", "That’s borderline unplayable, jesus", "Oh no :(", "Dear god thats slowpoke slow lol", "I think because it takes a long time for the hp to go down", "I don't get it...", "Thanks! Only played it once so didn't remember that at all.", "Hate when it MISSES and then that caterpie gets a chance to tackle attack. The game is generous and lets it do a critical for 2 damage.", "Jokes on us, while you were doing all that, he was training. And now he’s ready.", "I enjoy posts like this and would love to see more. I guess the others aren't really in love with the Switch console and just hop on the next hype bandwagon, but not everyone does that.", " I only played the one for NES as a kid and I thought it was a great game but a bit too punishing as it didn't have a save or password system so I ended up never finishing it.", "Yes! I love all the Inti Creates games!", "One of my favorite games of 2020! Hope you enjoy it!", "Content out of the way first - the story’ll last you about 40 hours, and it’s a good story.", "Gameplay’s excellent. Yada yada yada.", "Interesting, I've never heard of this game.", " I do like long games and I'm looking for something light and not too difficult at the moment. Might take a look into it.", "So many great games on DS! Did you know that Space Invaders Extreme is also on Switch? Another DS classic I love. It’s part of the Space Invaders Forever collection.", "Let's be frank: The switch is one of the worst consoles in terms of durability and quality.", "The games do make It worth It, but then again, PC is a thing.", "What’s your go to or favorite game to play when you only have a short 30-40mins worth of play time, whether it’s handheld or docked.", "I love Pacman 99 so far", "Right now I’m jumping on Monster Hunter for this. I’ll either kill a couple monsters I need parts from or I’ll work on a new quest that might take me the full 30 or so for a first kill.", "All I want is Jet Set Radio. Just like Tony Hawks Pro Skater 1+2, it's a game I can just play without thinking. It's what BotW turned into with the motorcycle and korok leaf. Just let me go in to the void called nothingness. Is that so hard Nintendo? Sadly it is.", "Holy i had never heard of this. It looks so good", "WHOAAAA", "Guess we gotta wait for Bomb Rush Cyberfunk", "Nice new thumbnail / cover. I like the style, and the fact that it shows more games.", "Keep up the good work!", "God, I hope Danganronpa comes soon...", "I wouldn't mind a Switch port but if it makes any difference the first 2 are available on mobile now and all three are on PC so there are options if you just want to play it!", "Thanks for the weekly update! I always catch a few hidden gems to look forward and this week is not the exception!", "So will there be some crazy Kingdom Hearts twist in the new TWEWY?", "i hope not", "Cool that they're putting snowrunners on the switch. I only played mudrunners honestly but if it's anything like that one it's quite fun. Excited for TWEWY too.", "It really looks exactly what a sequel should be. Can't wait", "That's usually how it goes.", "Fallout 3 and New Vegas when", "Konami, where is my metal gear collection on switch.", "I honestly really want to get it but i had to get a new phone and there were alot of hidden fees.", "I’m not a Switch hater, but the fact that no one was talking about this 2 or 3 years ago always bothered me.", "Still waiting for BOTW 2....", "So nothing new", "I had this, thank you!", "They gave this away at the Santa Monica Place and I think that it had a DVD with videos for each game.", "Thank you for archiving.", "Damn, feels like I'm back in high school lol Thanks for uploading this! Very cool", "Thanks for uploading. I used to love these.", "And of course I know why these companies end up removing backwards compatibility. For one, it's cheaper to just not include it. Less dev time and technology needs to go into the machine. And for two, it encourages the consumers to buy the game again on the new console. It's a very anti-consumer practice, but as long as it keeps working for them, they'll keep doing it.", "I have a 1st gen Japanese PS3 and a 1st gen US Wii. I know. I dread having to replace the capacitors in the PS3 eventually. Luckily I do have a spare Wii in storage for whenever this Wii dies. It cost me $150 to get it replaced last time from Nintendo when the video chip originally bit the dust.", "I’ve also heard if the game doesn’t have a digital file in the store it just won’t do anything, I know that’s basically what you said but I couldn’t believe that part until I heard a guy on a podcast say that. It was so disheartening", "Maybe I should replay Galaxy sometime too.", "To sum it up, Super Paper Mario is a fun Mario game but with a little bit of maturity and deep story thrown in making this one of the greatest Mario games", "I’m not so sure the title doesn’t conflict with the video’s message but as far as random videos posted around here go, that was fantastic!", "I wanted more people to see it! Also Jacob Geller is so calming!", "He’s so cool", "I wonder how it will be compared to its Japanese counterpart? Will they have the same rides and the restaurant?", "It will be similar to Japan, but without the Yoshi omnimover ride", "My bad I thought this was about Orlando", "You from the future?", "However long it takes."
    ]
    comments_collection2 = [
        "But I don't really see much talk about what those people would be actually willing to pay for said old games.", "So if Nintendo releases an old game, they need to make sure it runs properly from start to finish, they need to make a nice shop page, they need to do some marketing so people know the game is available so they can buy it, many games would need check for licences from other companies etc.", "So, how much money would you be willing to spend for Nintendo's games?", "Wii U ports should be £40, 3DS/Wii should be £30, GameCube/N64 should be £20, DS should be £10. NES/SNES/GameCube should be free with NSO.", "If the game is remastered enough, (better visuals, quality of life features, new content) add on £10 to each price.", "Is that that swords highest? Or do lynels have stronger ones. Cause I think in normal mode I have one that's like 120 or something along that damage. Just asking for clarity?", "Correct", "Don't think so...", "I'm pretty sure it can go higher.", "Wow thats incredible! It really is such a atmospheric game", "Thanks! I love the game, everything is so aesthetically pleasing", "You underestimate my power! Which translated to 'hya ah hyaaa'", "Yep, that's me. You're probably wondering how I got into this situation.", "You’ve gotta be used to the timing", "Damn that's cool. Good job pal!", "That's amazing.", "Wish it didn’t have the hud because that is a wallpaper!", "Yeah they're pretty easy to avoid but it's just in the castle that they're most annoying cause you like can't easily get away and they're always right above me, and even when they're kinda in front of my I can for some reason never lock on", "when your horse hates you so much that it runs over a cliff to get away from you 😔", "Ya'll weren't kiddin'. Whoa, Nelly!", "This game never ceases to surprise me.", "Did you blew up those ore deposits? :)", "I missed that you were also OP of the other post 🙂", "f", "Why would you inject HTML like that?", "If you bomb it, it comes out the ground to look around, then you hit it", "Shampaggen?", "I'm feeling the Captains itch! I'll get the powder...", "When I'm in command, every mission is a suicide mission!", "What an amazing idea for a custom dress! Absolutely brilliant!", "Leave it up and create rooms for the other seasons.", "That’s what I do!", "It’s cute anyway 😅😊", "This is freaking precious", "I have tried changing it a couple times but I love this wall so much. Maybe if ACNH had more animated walls that look realistic then I might be more willing. 😂", "I mean there’s always a holiday, somewhere... I say leave it. Who cares what holiday it is, you need the sweets", "Thank you. 🙂", "It’s too cute, you should keep it", "They don't call him Zucker for no reason.", "Zucker? I barely know her!", "Maybe it's stuck and they're both suffocating! And you're just taking pictures smh.", "They had a room, then you walked in", "He looks so happy", "W H A T", "My eyes🙈", "Why is this forum so wholesome but so hellish sometimes", "I love everything about this forum but damn, what are you people doing in my house?!", "The hell was inside us the whole time", "Hahahahaha", "._. Ummmm imma pretend I never read that", "OH MY- you're awesome dude!", "😳", "I do not like this, Sam I am.", "What Is Going On..", "i have them both. now i just have to wait", "This deserves WAY more upvotes lmao. That would lit be what their child would look like 😂", "Oh my god it’s so true.", "This better not awaken anything in me.", "Yeah.. the internet has ruined me", "I really need to visit my villagers more often 😲", "I'm happy in general that E3 is back. Last year was a catastrophy and a half with everyone and some more doing their own thing.", "95% of Summer Games Fest was just other streams that would have happened anyway that Geoff Keighley got permission to call part of Summer Games Fest.", "Brave of you to assume I don't own either a PlayStation, Xbox, or a gaming PC.", "I don't remember much of 2020 at all. I remember having a job for maybe 6 months of it, and some weirdly insignificant events, but otherwise... nothing. I feel cheated out of a year.", "Sounds familiar, what's it from?", "Free THEM", "Ahh, those pesky plumbers", "I like to imagine one day Mario goes to bowsers castle and it's just a random ass appartment", "Where's the lava? Did Bowser get a new home?", "They had lava but Karen claimed she had lava allergy so they had to remove it", "Hilarious 😂 mario and Luigi tied up with GameCube controllers.", "I want to be CEO. what are your qualifications? My name is Bowser...Hired.", "It would be easier to get used to if he actually showed up in stuff", "If Nintendo doesn't show off Metroid Prime 5 and 6 I'm going to be livid!!!!!", "Yes.", "Username checks out", "A monster.... or an artist?", "The anti-Valve.", "Still waiting for Super Mario Bros 4", "Thanks for this!", "you can't convince me that heritage / wata and game grading in general isn't a huge scam", "Ive always thought it was interesting that there are 3 popular video game series that all follow a similar pattern in their names. Pokémon, Pikmin, PAC-Man.", "Did you know? Pac-Man was initially going to be called Puck-Man, but the potential of people changing the P to an F was too great.", "Yeah, that's amazing.", "And they all exist in the same game!", "Here's your damn Pikmin 4 - Miyamoto", "Ah yes, the Capcom approach", "Darkstalkers are [DEFINITELY] dead", "It still hurts. I remember getting so hype for that teaser trailer.", "Fightcade community going strong!", "I need to get into that :U", "Now give us Metroid 5 and F-Zero NX, Miyamoto-sama!!", "I wanna play Chibi Robo and I'm not rich so I probably never will", "The copyright area mentions Mii's so this game might have Mii support", "Walking around and collecting data about different plants and animals sounds pretty cool though", "If it's like pokemon go it won't be bad, if it's like the Harry Potter or minecraft one it won't be good.", "Huh. I thought Nintendo said they were moving out of the mobile space. Or was that referring to them only developing mobile games, not publishing?", "Nintendo has never said that they were exiting the mobile space. Furukawa has mentioned that new mobile games have been in development as late as May 2020, but suggested that games wouldn’t come out in a 2-3 releases per year schedule, as they have targeted in the past and would rather have that effort be focused on existing games.", "I mean, they won't get the full cut since it's being developed by Niantic, but Pokemon itself is divided before they even license it out.", "I think they’re just slowing down, not stopping entirely. I hope that’s the case anyway, where the hell is my mobile Warioware Nintendo?", "somewhere in the world rn, arlo is screaming", "Expect a video in two weeks about it...", "90% sure he’s recording now lol", "That took 15 hours lol.", "Maybe it'll convince him to finally get a decent phone for once.", "Quarantine pounds are the worse, i thought i was fine till I realized i gained 11 pounds from eating depression brownies.", "I just got 700 usd from stimulus so i might buy it, the only problem is it’s so expensive.", "I look forward to Pikmin 4 A Walk", "No..... no!", "I wish it was a paid game like Mario Run, and not some micro-transaction gacha crap like 99% of mobile games.", "So I guess Catan isn't happening anymore. Or, at best, it's been back-burnered indefinitely."
    ]
    i = 0
    j = 0
    while i < comments_collection1.length
        post_id = rand(Post.first.id..Post.last.id)
        user_id = rand(User.first.id..User.last.id)
        Comment.create(content: comments_collection1[i], post_id: post_id, user_id: user_id)
        i += 1
    end
    while j < comments_collection2.length
        post_id = rand(Post.first.id..Post.last.id)
        user_id = rand(User.first.id..User.last.id)
        Comment.create(content: comments_collection2[j], post_id: post_id, user_id: user_id)
        j += 1
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