class PostsController < ApplicationController

  def index
    @posts = Event.all
  end

  def new
  end

  def create
    Event.create(post_params)
    binding.pry
  end

  private
  def post_params
    hash = params.require(:post).permit(:title, :detail, :num, :date)
    hash.merge(user_id: current_user.id, )
  end
end
