class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def twitter
    auth_hash = 
    request.env["omniauth.auth"]
    uid = auth_hash["uid"]
    name = auth_hash["info"]["name"]
    auth = Authorization.find_by_provider_and_uid("twitter", uid)
    if auth
      user = auth.user
    else
  end
end