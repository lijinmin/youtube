require 'googleauth'
require 'signet'
require 'google/api_client'
require 'google/api_client/client_secrets'
require 'json'
require 'launchy'
require 'thin'
require 'rest-client'
#http://localhost:3000/oauth2callback
def create_url
    client = Signet::OAuth2::Client.new(
    authorization_uri: "https://accounts.google.com/o/oauth2/auth?",
    client_id: "687842974914-3i5h5geogqp2tu7anr8gf3rqqfc03h8s.apps.googleusercontent.com",
    client_secret: "ZnOGPGeQykb_XaTpPwyedwQ7",
    redirect_uri: "http://youtube.aggso.com/auth/oauth2callback",
    scope: "https://www.google.com/m8/feeds/")
    options = {:response_type=>"code",approval_prompt: :force,access_type: :offline}
    p res = client.authorization_uri(options).to_s
end
create_url

def access_token
    client = Signet::OAuth2::Client.new(
        client_id: "687842974914-3i5h5geogqp2tu7anr8gf3rqqfc03h8s.apps.googleusercontent.com",
        client_secret: "ZnOGPGeQykb_XaTpPwyedwQ7",
        token_credential_uri: "https://accounts.google.com/o/oauth2/token",
        )
    client.code=("4/6tdG_KaKUMxqATtigCwP41DLCgqDQ2ms8SLMqxIUCe0")
    client.grant_type=('authorization_code')
    client.redirect_uri=("http://youtube.aggso.com/auth/oauth2callback")

    p res = client.fetch_access_token!
end

access_token
# code = "4/qrFCiA-0-DTKui5462thdt2SGbQEv0kdMRcWxCYL0uI"
# client.code=(code)
# client.grant_type=('authorization_code')
# p res = client.fetch_access_token! 
# i = 0
# while i>=0 && i < 10
#     p i 
#     i = i+3
# end


# for x in 0..25 #公鸡
#     y = 100-7*x #母鸡
#     if (y%4==0 && y>=0)
#         y = y/4
#         z = 100-x-y
#         if (z%3==0 && (5*x + 3*y +z/3)==100)
#             p "公鸡=#{x},母鸡=#{y},小鸡=#{z}"       
#         end
#     end
# end

# for x in 0..25
#     y = 100-7*x
#     if (y%4==0 && y>0)
#         y = y/4
#         z = 100-x-y
#         p "公鸡=#{x},母鸡=#{y},小鸡=#{z}"     
#     end
# end

# result = []
# result_hash = {}
# 26.times do |hen|
#   if (100 - (4*hen))%7 == 0
#    cock = (100 - (4 * hen))/7
#    poult = 100 - hen - cock
#    result_hash = {cock: cock, hen: hen, poult: poult}
#    result << result_hash
#   end
# end
# puts result