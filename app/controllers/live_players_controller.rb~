class LivePlayersController < ApplicationController
  before_action :set_live_player, only: [:show, :edit, :update, :destroy]

  # GET /live_players
  # GET /live_players.json
  def index
	  #puts DateTime.now
    system "rake db:reset"
    system "rake populateA"
    system "rake populate"
    flash[:notice] = "Players updated"
    @live_players = LivePlayer.all
  end

  # GET /live_players/1
  # GET /live_players/1.json
  def show
  end

  # GET /live_players/new
  def new
    @live_player = LivePlayer.new
  end

  # GET /live_players/1/edit
  def edit
  end

  # POST /live_players
  # POST /live_players.json
  def create
    @live_player = LivePlayer.new(live_player_params)

    respond_to do |format|
      if @live_player.save
        format.html { redirect_to @live_player, notice: 'Live player was successfully created.' }
        format.json { render action: 'show', status: :created, location: @live_player }
      else
        format.html { render action: 'new' }
        format.json { render json: @live_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /live_players/1
  # PATCH/PUT /live_players/1.json
  def update
    respond_to do |format|
      if @live_player.update(live_player_params)
        format.html { redirect_to @live_player, notice: 'Live player was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @live_player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /live_players/1
  # DELETE /live_players/1.json
  def destroy
    @live_player.destroy
    respond_to do |format|
      format.html { redirect_to live_players_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_live_player
      @live_player = LivePlayer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def live_player_params
      params.require(:live_player).permit(:Nid, :Plyr, :Team)
    end
end
