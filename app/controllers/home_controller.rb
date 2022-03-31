class HomeController < ApplicationController
  def index
    @post = Post.new
    @posts = Post.last(3)
  end
end
