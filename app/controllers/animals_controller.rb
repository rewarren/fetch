class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  def index
    # @animal = current_user.animals.build(animal_params)
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    @animal = Animal.new
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def create
    @animal = Animal.create!(params[:id])
    redirect_to animal_path(@animal)
  end

  def update
    @animal = Animal.find(params[:id])
    @animal.update(animal_params)

    redirect_to animal_path(@animal)
  end

  def destroy
    @animal = Animal.find(params[:id])
    @animal.destroy

    redirect_to animals_path
  end

  private
  def animal_params
    params.require(:animal).permit(:name, :photo_url, :age, :gender, :bio, :user_id)
  end
end
