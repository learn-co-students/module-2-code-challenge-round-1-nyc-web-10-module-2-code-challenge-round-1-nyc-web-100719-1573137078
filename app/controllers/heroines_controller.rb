class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end
  
  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new 
    @powers = Power.all
  end

  def create
    @powers=Power.all
    @heroine = Heroine.new(heroine_params)
    if @heroine.save
      redirect_to heroines_path
    else
      flash[:errors] = @heroine.errors.full_messages
      render :new
    end
    
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
