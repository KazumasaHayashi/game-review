class MyGamesController < ApplicationController
  before_action :set_my_game, only: [:show, :edit, :update, :destroy]

  # GET /my_games
  # GET /my_games.json
  def index
    @my_games = MyGame.all
  end

  # GET /my_games/1
  # GET /my_games/1.json
  def show
  end

  # GET /my_games/new
  def new
    @my_game = MyGame.new
  end

  # GET /my_games/1/edit
  def edit
  end

  # POST /my_games
  # POST /my_games.json
  def create
    @my_game = MyGame.new(my_game_params)

    respond_to do |format|
      if @my_game.save
        format.html { redirect_to @my_game, notice: 'My game was successfully created.' }
        format.json { render :show, status: :created, location: @my_game }
      else
        format.html { render :new }
        format.json { render json: @my_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /my_games/1
  # PATCH/PUT /my_games/1.json
  def update
    respond_to do |format|
      if @my_game.update(my_game_params)
        format.html { redirect_to @my_game, notice: 'My game was successfully updated.' }
        format.json { render :show, status: :ok, location: @my_game }
      else
        format.html { render :edit }
        format.json { render json: @my_game.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /my_games/1
  # DELETE /my_games/1.json
  def destroy
    @my_game.destroy
    respond_to do |format|
      format.html { redirect_to my_games_url, notice: 'My game was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_my_game
      @my_game = MyGame.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def my_game_params
      params.require(:my_game).permit(:year, :company, :name, :price, :evaluation, :comment, :already)
    end
end
