class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def index
    @popular = Instagram.user_recent_media
  end
end
