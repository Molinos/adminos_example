class IndexController < ApplicationController
  def index
    @articles = Article.published.sorted
  end
end
