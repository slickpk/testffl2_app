class FteamsController < ApplicationController
  before_action :set_fteam, only: [:show, :edit, :update, :destroy]

  # GET /fteams
  # GET /fteams.json
  def index
    @fteams = Fteam.all
   #@teamplayers = Teamplayer.all
  end

  # GET /fteams/1
  # GET /fteams/1.json
  def show
  end

  # GET /fteams/new
  def new
    @fteam = Fteam.new
  end

  # GET /fteams/1/edit
  def edit
  end

  # POST /fteams
  # POST /fteams.json
  def create
    @fteam = Fteam.new(fteam_params)

    respond_to do |format|
      if @fteam.save
        format.html { redirect_to @fteam, notice: 'Fteam was successfully created.' }
        format.json { render action: 'show', status: :created, location: @fteam }
      else
        format.html { render action: 'new' }
        format.json { render json: @fteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fteams/1
  # PATCH/PUT /fteams/1.json
  def update
    respond_to do |format|
      if @fteam.update(fteam_params)
        format.html { redirect_to @fteam, notice: 'Fteam was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @fteam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fteams/1
  # DELETE /fteams/1.json
  def destroy
    @fteam.destroy
    respond_to do |format|
      format.html { redirect_to fteams_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fteam
      @fteam = Fteam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fteam_params
      params.require(:fteam).permit(:Team, :TeamUrl)
    end
end
