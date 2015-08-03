class AnimalsController < ApplicationController

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
  end

  def update
  end

  def destroy
  end

  private
  def animal_params
    params.requrie(:animal).permit(:name, :photo_url, :species, :age, :gender, :bio)
  end
end
