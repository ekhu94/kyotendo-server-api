Post.destroy_all
Forum.destroy_all
require 'json'

def loadForums
    forums = ['Nintendo Switch', 'Zelda', 'Mario Kart', 'Pokemon', 'Nintendo Music', 'Game Deals']
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
            img_url: nil,
            user: User.find(user_id),
            forum: forum
        )
    }
end

# def loadZeldaPosts
#     file = open('./db/db_zelda.json')
#     content = file.read
#     json = JSON.parse(content)

#     json['data'].each{ |i|
#         user_id = rand(User.first.id..User.last.id)
#         forum_id = Forum.find_by(name: 'Zelda')
#         Post.create(
#             title: i['data']['title'],
#             content: '',
#             img_url: i['data']['url_overridden_by_dest'],
#             user_id: user_id,
#             forum_id: forum_id
#         )
#     }
# end

loadForums
loadNintendoSwitchPosts
# loadZeldaPosts