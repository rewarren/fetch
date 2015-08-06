class AnimalsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:create, :edit, :update, :destroy]

  def index
    authenticate_user!
    @animals = Animal.find_with_reputation(:likes, :all)
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

  def like
    value = params[:type] == "up" ? 1 : -1
    @animal = Animal.find(params[:id])
    @animal.add_evaluation(:likes, value, current_user)

    redirect_to :back, notice: "thanks for thinking I'm cute"
  end

  private
  def animal_params
    params.require(:animal).permit(:name, :photo_url, :age, :gender, :bio, :variety_id)
  end
end
