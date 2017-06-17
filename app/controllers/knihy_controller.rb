class KnihyController < ApplicationController
  before_action :set_kniha, only: [:show, :edit, :update, :destroy]

  # GET /knihy
  # GET /knihy.json
  def index
    @knihy = Kniha.all
  end

  # GET /knihy/1
  # GET /knihy/1.json
  def show
  end

  # GET /knihy/new
  def new
    @kniha = Kniha.new
  end

  # GET /knihy/1/edit
  def edit
  end

  # POST /knihy
  # POST /knihy.json
  def create
    @kniha = Kniha.new(kniha_params)

    respond_to do |format|
      if @kniha.save
        format.html { redirect_to @kniha, notice: 'Kniha was successfully created.' }
        format.json { render :show, status: :created, location: @kniha }
      else
        format.html { render :new }
        format.json { render json: @kniha.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /knihy/1
  # PATCH/PUT /knihy/1.json
  def update
    respond_to do |format|
      if @kniha.update(kniha_params)
        format.html { redirect_to @kniha, notice: 'Kniha was successfully updated.' }
        format.json { render :show, status: :ok, location: @kniha }
      else
        format.html { render :edit }
        format.json { render json: @kniha.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /knihy/1
  # DELETE /knihy/1.json
  def destroy
    @kniha.destroy
    respond_to do |format|
      format.html { redirect_to knihy_url, notice: 'Kniha was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kniha
      @kniha = Kniha.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def kniha_params
      params.require(:kniha).permit(:nazev, :autor_id, :zanr_id, :isbn, :nakladatelstvi_id, :pocet_stran, :vydani, :rozmer, :rok_vydani, :vazba, :cena, :poznamka, :popis, :koupeno, :ziskano)
    end
end
