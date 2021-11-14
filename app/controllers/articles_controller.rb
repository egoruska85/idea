class ArticlesController < ApplicationController


  def index
    @articles = Article.where ({verify: true})
  end
  def show
    @article = Article.find(params[:id])
  end
end
