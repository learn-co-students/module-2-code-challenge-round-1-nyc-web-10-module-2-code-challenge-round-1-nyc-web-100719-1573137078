class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
    @heroine = Heroine.new
    @powers = Power.all
  end
  
  def show
    @heroine = Heroine.find(params[:id])
  end

  def filter
    @powers = Power.all
    @power_id = filter_params[:power_id].to_i
    @heroines_filtered = Heroine.all.select do |heroine|
      heroine.power_id == @power_id
    end
    render :index
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

  def filter_params
    params.require(:heroine).permit(:power_id)
  end

end
