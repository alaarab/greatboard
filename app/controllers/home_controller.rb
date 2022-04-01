class HomeController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.order(id: :desc).first(10)
  end
end
