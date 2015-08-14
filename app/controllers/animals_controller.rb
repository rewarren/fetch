class AnimalsController < ApplicationController
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def index
    # Since you have this as a before_action that's executed bfore all of the CRUD actions, you don't need it here.
    authenticate_user!
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
    # This needs to be plural in order for it to work
    @animal = current_user.animals.create!(animal_params)
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
