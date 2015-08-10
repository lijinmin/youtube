class AuthController < ApplicationController
    # after_save :access_token

    def index
        client = Signet::OAuth2::Client.new(
        authorization_uri: "https://accounts.google.com/o/oauth2/auth?",
        client_id: "687842974914-3i5h5geogqp2tu7anr8gf3rqqfc03h8s.apps.googleusercontent.com",
        client_secret: "ZnOGPGeQykb_XaTpPwyedwQ7",
        redirect_uri: "http://youtube.aggso.com/auth/oauth2callback",
        scope: "https://www.googleapis.com/auth/youtube",
        token_credential_uri: "https://accounts.google.com/o/oauth2/token")
        options = {:response_type=>"code",approval_prompt: :force,access_type: :offline}
        @res = client.authorization_uri().to_s
    end

    def oauth2callback
        logger.info "***********************************"
        logger.info  params[:code]

         client = Signet::OAuth2::Client.new(
            client_id: "687842974914-3i5h5geogqp2tu7anr8gf3rqqfc03h8s.apps.googleusercontent.com",
            client_secret: "ZnOGPGeQykb_XaTpPwyedwQ7",
            token_credential_uri: "https://accounts.google.com/o/oauth2/token",
            redirect_uri: "http://youtube.aggso.com/auth/oauth2callback")

        client.code=(params[:code])
        logger.info client.grant_type=('authorization_code')

        logger.info res = client.fetch_access_token!
  
        logger.info "***********************************"
        

    end
    
    # def access_token
    #     logger.info "*************************************"
    #     client = Signet::OAuth2::Client.new(
    #     client_id: "687842974914-3i5h5geogqp2tu7anr8gf3rqqfc03h8s.apps.googleusercontent.com",
    #     client_secret: "ZnOGPGeQykb_XaTpPwyedwQ7",
    #     token_credential_uri: "https://accounts.google.com/o/oauth2/token",
    #     grant_type: 'authorization_code',
    #     redirect_uri: "http://youtube.aggso.com/auth/oauth2callback")

    #     logger.info @code = Code.first
    #     logger client.code=(@code.code)

    #     logger.info client.client_id
    #     logger.info client.grant_type

    #     # client.fetch_access_token!
    #     logger.info res = client.fetch_access_token!
    #     # @code.access_token = res["access_token"]
    #     # @code.refresh_token = res["refresh_token"]
    #     # @code.save
    #     logger.info "***********************************"
    # end

end
