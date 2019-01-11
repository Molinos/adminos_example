class CommentsController < ApplicationController
  def create
    article = Article.find_by!(slug: params[:article_id])
    @comment = article.comments.create(comment_params)

    render layout: false
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
