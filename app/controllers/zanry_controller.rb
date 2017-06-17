class ZanryController < ApplicationController
  before_action :set_zanr, only: [:show, :edit, :update, :destroy]

  # GET /zanry
  # GET /zanry.json
  def index
    @zanry = Zanr.all
  end

  # GET /zanry/1
  # GET /zanry/1.json
  def show
  end

  # GET /zanry/new
  def new
    @zanr = Zanr.new
  end

  # GET /zanry/1/edit
  def edit
  end

  # POST /zanry
  # POST /zanry.json
  def create
    @zanr = Zanr.new(zanr_params)

    respond_to do |format|
      if @zanr.save
        format.html { redirect_to zanry_path, notice: 'Zanr was successfully created.' }
        format.json { render :show, status: :created, location: @zanr }
      else
        format.html { render :new }
        format.json { render json: @zanr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /zanry/1
  # PATCH/PUT /zanry/1.json
  def update
    respond_to do |format|
      if @zanr.update(zanr_params)
        format.html { redirect_to zanry_path, notice: 'Zanr was successfully updated.' }
        format.json { render :show, status: :ok, location: @zanr }
      else
        format.html { render :edit }
        format.json { render json: @zanr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /zanry/1
  # DELETE /zanry/1.json
  def destroy
    @zanr.destroy
    respond_to do |format|
      format.html { redirect_to zanry_url, notice: 'Zanr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_zanr
      @zanr = Zanr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def zanr_params
      params.require(:zanr).permit(:nazev)
    end
end
