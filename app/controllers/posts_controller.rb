class PostsController < ApplicationController

  def index
    @posts = Event.all
  end

  def new
  end

  def create
    Event.create(post_params)
  end

  private
  def post_params
    hash = params.permit(:title)
    hash.merge(user_id: current_user.id)
  end
end
