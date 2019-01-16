class IndexController < ApplicationController
  def index
    @articles = Article.published.sort_by_publish_at.page(params[:page])
  end
end
