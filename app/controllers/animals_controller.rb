class AnimalsController < ApplicationController

  def index
    @variety = Variety.all
    @animals = Animal.all
  end

  def show
    @animal = Animal.find(params[:id])
  end

  def new
    binding.pry
    @variety = Variety.find(params[:variety_id])
    @animal = Animal.new
  end

  def edit
    @animal = Animal.find(params[:id])
  end

  def create
    @animal = @variety.animals.create!(animal_params)
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
    params.require(:animal).permit(:name, :photo_url, :age, :gender, :bio, :variety_id)
  end
end
