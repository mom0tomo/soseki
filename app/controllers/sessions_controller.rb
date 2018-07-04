class SessionsController < ApplicationController
  def create
    provider = auth_hash[:provider]
    uid = auth_hash[:uid]
    name = auth_hash[:info][:name]
    image_url = auth_hash[:info][:image]

    find_or_create_by(provider: provider,uid: uid) do |user|
      user.username = name
      user.image_url = image_url

      if user
        session[:user_id] = user.id
        redirect_to '/posts/index', notice: "ログインしました。"
      else
        redirect_to root_path, notice: "失敗しました。"
      end
    end
  end
end
