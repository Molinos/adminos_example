class IndexController < ApplicationController
  def index
    @articles = Article.published.sorted.page(params[:page])
  end
end
