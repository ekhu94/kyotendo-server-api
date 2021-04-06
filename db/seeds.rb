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
    file = open('./db/db_nintendo_switch.json')
    content = file.read
    json = JSON.parse(content)

    json.each{ |i|
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
    file = open('./db/db_zelda.json')
    content = file.read
    json = JSON.parse(content)

    json.each{ |i|
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
    file = open('./db/db_mario_kart.json')
    content = file.read
    json = JSON.parse(content)

    json.each{ |i|
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
    file = open('./db/db_pokemon.json')
    content = file.read
    json = JSON.parse(content)

    json.each{ |i|
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