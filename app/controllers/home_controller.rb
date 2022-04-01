class HomeController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.order(id: :desc).first(3)
  end
end
