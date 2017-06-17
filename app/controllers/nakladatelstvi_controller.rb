class NakladatelstviController < ApplicationController
  before_action :set_nakladatelstvi, only: [:show, :edit, :update, :destroy]

  # GET /nakladatelstvi
  # GET /nakladatelstvi.json
  def index
    @nakladatelstvi = Nakladatelstvi.all
  end

  # GET /nakladatelstvi/1
  # GET /nakladatelstvi/1.json
  def show
  end

  # GET /nakladatelstvi/new
  def new
    @nakladatelstvi = Nakladatelstvi.new
  end

  # GET /nakladatelstvi/1/edit
  def edit
  end

  # POST /nakladatelstvi
  # POST /nakladatelstvi.json
  def create
    @nakladatelstvi = Nakladatelstvi.new(nakladatelstvi_params)

    respond_to do |format|
      if @nakladatelstvi.save
        format.html { redirect_to nakladatelstvi_index_path, notice: 'Nakladatelstvi was successfully created.' }
        format.json { render :show, status: :created, location: @nakladatelstvi }
      else
        format.html { render :new }
        format.json { render json: @nakladatelstvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nakladatelstvi/1
  # PATCH/PUT /nakladatelstvi/1.json
  def update
    respond_to do |format|
      if @nakladatelstvi.update(nakladatelstvi_params)
        format.html { redirect_to nakladatelstvi_index_path, notice: 'Nakladatelstvi was successfully updated.' }
        format.json { render :show, status: :ok, location: @nakladatelstvi }
      else
        format.html { render :edit }
        format.json { render json: @nakladatelstvi.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nakladatelstvi/1
  # DELETE /nakladatelstvi/1.json
  def destroy
    @nakladatelstvi.destroy
    respond_to do |format|
      format.html { redirect_to nakladatelstvi_index_url, notice: 'Nakladatelstvi was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nakladatelstvi
      @nakladatelstvi = Nakladatelstvi.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nakladatelstvi_params
      params.require(:nakladatelstvi).permit(:nazev)
    end
end
