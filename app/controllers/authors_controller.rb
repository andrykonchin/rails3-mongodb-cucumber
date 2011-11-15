class AuthorsController < ApplicationController

  before_filter :set_author, :only => [:edit, :update, :show, :destroy]

  def index
    @authors = Author.all

    respond_to do |format|
      format.html
    end
  end

  def new
    @author = Author.new

    respond_to do |format|
      format.html
    end
  end

  def create
    @author = Author.new(params[:author])

    respond_to do |format|
      if @author.save
        format.html { redirect_to @author, :notice => "Author created!" }
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
      if @author.update_attributes(params[:author])
        format.html { redirect_to :action => :index, :notice => "Author saved!" }
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
    @author.destroy

    respond_to do |format|
      format.html { redirect_to :action => :index, :notice => "Author deleted!"}
    end
  end

  private

  def set_author
    @author = Author.find(params[:id])
  end
end
