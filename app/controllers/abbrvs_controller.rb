class AbbrvsController < ApplicationController
  before_action :set_abbrv, only: [:show, :edit, :update, :destroy]

  # GET /abbrvs
  # GET /abbrvs.json
  def index
    #system "rake db:reset"
    #system "rake populateA"
    @abbrvs = Abbrv.all.sort
  end

  # GET /abbrvs/1
  # GET /abbrvs/1.json
  def show
  end

  # GET /abbrvs/new
  def new
    @abbrv = Abbrv.new
  end

  # GET /abbrvs/1/edit
  def edit
  end

  # POST /abbrvs
  # POST /abbrvs.json
  def create
    @abbrv = Abbrv.new(abbrv_params)

    respond_to do |format|
      if @abbrv.save
        format.html { redirect_to @abbrv, notice: 'Abbrv was successfully created.' }
        format.json { render action: 'show', status: :created, location: @abbrv }
      else
        format.html { render action: 'new' }
        format.json { render json: @abbrv.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /abbrvs/1
  # PATCH/PUT /abbrvs/1.json
  def update
    respond_to do |format|
      if @abbrv.update(abbrv_params)
        format.html { redirect_to @abbrv, notice: 'Abbrv was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @abbrv.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /abbrvs/1
  # DELETE /abbrvs/1.json
  def destroy
    @abbrv.destroy
    respond_to do |format|
      format.html { redirect_to abbrvs_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_abbrv
      @abbrv = Abbrv.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def abbrv_params
      params.require(:abbrv).permit(:Abrv, :Team)
    end
end
