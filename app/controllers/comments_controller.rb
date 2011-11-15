class CommentsController < ApplicationController
  respond_to :html

  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create!(params[:comment])

    respond_with do |format|
      format.html do
        if request.xhr?
          render :partial => "comments/comment", :locals => { :comment => @comment }, :layout => false, :status => :created
        else
          redirect_to @article, :notice => "Comment created!"
        end
      end
    end
  end
end
