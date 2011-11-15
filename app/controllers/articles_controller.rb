class ArticlesController < ApplicationController
  before_filter :set_article, :only => [:edit, :update, :show, :destroy]

  def index
    @articles = Article.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @article = Article.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @article = Article.new(params[:article])

    respond_to do |format|
      if @article.save
        format.html { redirect_to @article, :notice => "Article created!" }
      else
        format.html { render :new }
      end
    end
  end

  def edit
    respond_to do |format|
      format.html
    end
  end

  def update
    respond_to do |format|
      if @article.update_attributes(params[:article])
        format.html { redirect_to @article, :notice => "Article saved!" }
      else
        format.html { render :edit }
      end
    end
  end

  def show
    respond_to do |format|
      format.html
    end
  end

  def destroy
    @article.destroy

    respond_to do |format|
      format.html { redirect_to :action => :index, :notice => "Article deleted!" }
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end
