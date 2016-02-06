class PostsController < ApplicationController

  def index
    @posts = Event.all
  end
  #adminページ？
  #投稿記事一覧ページ？showで？

  def new
  end

  def create
    Event.create(post_params)
  end

  private
  def post_params
    hash = params.permit(:title, :detail, :num, :date)
    hash.merge(user_id: current_user.id, )
  end
end
