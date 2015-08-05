class VarietiesController < ApplicationController

  def index
    @varieties = Variety.all
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
    @variety = Variety.create(variety_params)
    redirect_to variety_path(@variety)
  end

  def update
    @variety = Variety.find(params[:id])
    @variety.update(variety_params)

    redirect_to variety_path(@variety)
  end

  def destroy
    @variety = Variety.find(params[:id])
    @variety.destroy

    redirect_to variety_path
  end

  private
  def variety_params
    params.require(:variety).permit(:name)
  end

end
