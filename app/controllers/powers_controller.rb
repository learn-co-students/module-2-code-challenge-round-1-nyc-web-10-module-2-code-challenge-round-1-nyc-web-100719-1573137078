class PowersController < ApplicationController
  def index
    @powers = Power.all
  end

  def show
    @power = Power.find(params[:id])
  end

  def search
    if params[:search].blank?
      redirect_to heroines_path
    else
      @parameter = params[:search].downcase
      @results = Power.all.where("lower(name) LIKE :search", search: @parameter)
    end
  end
end
