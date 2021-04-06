Post.destroy_all
Forum.destroy_all
require 'json'

def loadForums
    forums = ['Nintendo Switch', 'Zelda', 'Mario Kart', 'Pokemon', 'Game Deals']
    i = 0
    while i < 6
        Forum.create(name: forums[i])
        i += 1
    end
end

def loadNintendoSwitchPosts
    #* Discussion Posts
    disc_file = open('./db/db_nintendo_switch_disc.json')
    disc_content = file.read
    disc_json = JSON.parse(content)

    disc_json.each{ |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Nintendo Switch')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content: i['data']['children'][0]['data']['selftext'],
            post_type: 'discussion',
            user: User.find(user_id),
            forum: forum
        )
    }
end

def loadZeldaPosts
    #* Image Posts
    img_file = open('./db/db_zelda_img.json')
    img_content = file.read
    img_json = JSON.parse(content)

    img_json.each{ |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Zelda')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            user: User.find(user_id),
            forum: forum
        )
    }
end

def loadMarioKartPosts
    #* Image Posts
    img_file = open('./db/db_mario_kart_img.json')
    img_content = file.read
    img_json = JSON.parse(content)

    img_json.each{ |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Mario Kart')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            user: User.find(user_id),
            forum: forum
        )
    }
end

def loadPokemonPosts
    #* Image Posts
    img_file = open('./db/db_pokemon_img.json')
    img_content = file.read
    img_json = JSON.parse(content)

    img_json.each{ |i|
        user_id = rand(User.first.id..User.last.id)
        forum = Forum.find_by(name: 'Pokemon')
        Post.create(
            title: i['data']['children'][0]['data']['title'],
            content: i['data']['children'][0]['data']['url_overridden_by_dest'],
            post_type: 'image',
            user: User.find(user_id),
            forum: forum
        )
    }
end

loadForums
loadNintendoSwitchPosts
loadZeldaPosts
loadMarioKartPosts
loadPokemonPosts