# frozen_string_literal: true
class BattlesController < OpenReadController
  before_action :set_battle, only: [:update, :destroy]

  # GET /battles
  # GET /examples.json
  def index
    @battles = Battle.all

    render json: @battles
  end

  # GET /examples/1
  # GET /examples/1.json
  def show
    render json: Battle.find(params[:id])
  end

  # POST /examples
  # POST /examples.json
  def create
    p current_user
    @battle = current_user.battles.build(battle_params)

    if @battle.save
      render json: @battle, status: :created
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /battles/1
  # PATCH/PUT /battles/1.json
  def update
    if @battle.update(battle_params)
      head :no_content
    else
      render json: @battle.errors, status: :unprocessable_entity
    end
  end

  # DELETE /battles/1
  # DELETE /battles/1.json
  def destroy
    @battle.destroy

    head :no_content
  end

  def set_battle
    @battle = current_user.battles.find(params[:id])
  end

  def battle_params
    params.require(:battle).permit(:title, :artist, :location, :description, :url, :date_photographed, :comment)
  end

  private :set_battle, :battle_params
end
