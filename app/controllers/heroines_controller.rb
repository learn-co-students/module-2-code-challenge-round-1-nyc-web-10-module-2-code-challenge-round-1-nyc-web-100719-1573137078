class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(strong_params)
    if @heroine.save
      redirect_to heroine_path(@heroine)
    else
      redirect_to heroines_path
    end
  end

  private

  def strong_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
