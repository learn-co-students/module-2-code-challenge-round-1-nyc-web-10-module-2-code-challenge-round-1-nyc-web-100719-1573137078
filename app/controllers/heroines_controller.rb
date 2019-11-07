class HeroinesController < ApplicationController
  # all records
  def index
    @heroines = Heroine.all
  end

  # singe record
  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
    redirect_to heroines_path(@heroine)
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power, :power_id)
  end

end
