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
end

loadForums
loadNintendoSwitchPosts
loadZeldaPosts
loadMarioKartPosts
loadPokemonPosts
loadAnimalCrossingPosts