

class CommentsController < ApplicationController

    def create
      @article = Article.find(params[:article_id])
      @comment = current_user.comments.create(comment_params)
      @comment.email_user = current_user.email
      @comment.article = @article
      @comment.save!
      redirect_to article_path(@article)
    end
  
    def destroy
      @article = Article.find(params[:article_id])
      @comment = current_user.comments.find(params[:id])
      @comment.destroy
      redirect_to article_path(@article), status: :see_other
    end
  
    private
      def comment_params
        params.require(:comment).permit(:body, :status)
      end
  end
  
