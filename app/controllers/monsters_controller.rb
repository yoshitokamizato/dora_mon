class MonstersController < ApplicationController

  def index
    @monsters = Monster.all
  end

  def new
    @monster = Monster.new
  end

  def create
    #Strong Paramaterの記述
    Monster.create(monster_params)
  end

  def edit
    @monster = Monster.find(params[:id])
  end

  def update
    monster = Monster.find(params[:id])
    monster.update(monster_params)
  end

  def destroy
    monster = Monster.find(params[:id])
    monster.destroy
  end

  private

  def monster_params
    params.require(:monster).permit(:name, :tribe)
  end
end
