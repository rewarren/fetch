class SpeciesController < ApplicationController

  def index
    @species = Species.all
  end

  def show
    @species = Species.all
  end

  def new
    @species = Species.new
  end

  def edit
    @species = Species.find(params[:id])
  end

  def create
    @species = Species.create
    redirect_to species_path(@species)
  end

  def update
    @species = Species.find(params[:id])
    @species.update(species_params)

    redirect_to species_path(@species)
  end

  def destroy
  end



end
