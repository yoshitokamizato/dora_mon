class BossesController < ApplicationController
  
  def index
    @bosses = Boss.all
  end

  def new
    @boss = Boss.new
  end

  def create
    Boss.create(boss_params)
  end

  def edit
    @boss = Boss.find(params[:id])
  end

  def update
    boss = Boss.find(params[:id])
    boss.update(boss_params)
  end

  def destroy
    boss = Boss.find(params[:id])
    boss.destroy
  end

  def boss_params
    params.require(:boss).permit(:name, :tribe)
  end

end
