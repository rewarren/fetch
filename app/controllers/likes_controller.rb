class LikesController < ApplicationController

  def index
  end
  
  def show
  end

  def new
  end

  def create
    @animal = Animal.find(params[:post_id])
    @like = @like.comments.create(like_params)
  end


  def destroy
  end
