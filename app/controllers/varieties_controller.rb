class VarietiesController < ApplicationController

  def index
    @variety = Variety.all
  end

  def show
    @variety = Variety.all
  end

  def new
    @variety = Variety.new
  end

  def edit
    @variety = Variety.find(params[:id])
  end

  def create
    @variety = Variety.create(params[:id])
    redirect_to variety_path(@variety)
  end

  def update
    @variety = Variety.find(params[:id])
    @variety.update(variety_params)

    redirect_to variety_path(@variety)
  end

  def destroy
  end

  private
  def variety_params
    params.require(:varieties).permit(:name)
  end

end
