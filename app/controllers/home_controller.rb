# app/controllers/home_controller.rb
class HomeController < ApplicationController
  def index
    @recent_posts = Post.where(published: true).order(created_at: :desc).limit(5)
  end
end