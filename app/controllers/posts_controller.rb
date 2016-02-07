class PostsController < ApplicationController
  before_action :check_permission

  def index
    @posts = Event.all
  end
  #投稿記事一覧ページ
  #showで自分の投稿した記事が見れるマイページ

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

  def check_permission
    unless current_user.status == 3
      head(403)
    end
  end
end
