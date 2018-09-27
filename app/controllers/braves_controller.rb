class BravesController < ApplicationController

  def index
    @braves = Brave.all
  end

  def new
    @brave = Brave.new
  end

  def create
    Brave.create(brave_params)
  end

  def edit
    @brave = Brave.find(params[:id])
  end

  def update
    brave = Brave.find(params[:id])
    brave.update(brave_params)
  end

  def destroy
    brave = Brave.find(params[:id])
    brave.destroy
  end


  private

  def brave_params
    params.require(:brave).permit(:name, :level, :hp, :mp)
  end
end
