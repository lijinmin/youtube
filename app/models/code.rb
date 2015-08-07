class Code < ActiveRecord::Base
    # def self.get_access_token
    #     client = Signet::OAuth2::Client.new(
    #     client_id: "687842974914-3i5h5geogqp2tu7anr8gf3rqqfc03h8s.apps.googleusercontent.com",
    #     client_secret: "ZnOGPGeQykb_XaTpPwyedwQ7",
    #     token_credential_uri: "https://accounts.google.com/o/oauth2/token",
    #     grant_type: 'authorization_code',
    #     redirect_uri: "http://whtest.aggso.com/auth/oauth2callback")

    #     logger.info @code = Code.first
    #     logger client.code=(@code.code)
    #     logger.info client.client_id
    #     logger.info client.grant_type

    #     # client.fetch_access_token!
    #     logger.info res = client.fetch_access_token!
    #     @code.access_token = res["access_token"]
    #     @code.refresh_token = res["refresh_token"]
    #     @code.save
    #     logger.info "***********************************"
    # end
end
