class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end


  def show
    @heroine = Heroine.find(params[:id])
    @powers = Power.all 
  end 

  def new
    @heroine = Heroine.new
    @powers = Power.all 
  end 

  #if no validations 
  # def create
  #   @heroine = Heroine.create(heroine_params)
  #   redirect_to heroine_path(@heroine)
  # end 

  #for validations - to revise?
  #make a new heroine taking in the user's params, 
  #check for validations, if valid then save and redirect to that new heroine page
  # if not valid show a new form page to fill out again  
  def create
    @heroine = Heroine.new(heroine_params)
    if @heroine.valid?
      @heroine.save 
      redirect_to heroine_path(@heroine)
    else
      redirect_to new_heroine_path
    end 
  end 


  private 

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end 



end
