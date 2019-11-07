class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
    @power = Power.find(@heroine.power_id)
  end

  def new
    @heroine = Heroine.new
    @powers = Power.all
  end

  def create
    heroine = Heroine.new(heroine_params)
    if heroine.valid?
      flash[:notice] = "Heroine created successfully."
      heroine.save
      redirect_to show_heroine_path(heroine)
    else
      flash[:error] = heroine.errors.full_messages
      @heroine = Heroine.new(heroine_params)
      @powers = Power.all
      # I know this isn't working perfectly, I need to review this
      render :new
    end
  end

  private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
