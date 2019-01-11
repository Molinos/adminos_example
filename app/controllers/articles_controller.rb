class ArticlesController < ApplicationController
  def show
    @article = Article.find_by!(slug: params[:id])
  end
end
