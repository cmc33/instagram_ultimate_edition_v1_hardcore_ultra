class PostsController < ApplicationController

def new
  @post = Post.new
end

def create
  @post = Post.create(post_params)
end

def index
end

end
