class ArticleController < ApplicationController
  def show
    @nav = Article.find(params[:id])
  end
end
