class AutoriController < ApplicationController
  before_action :set_autor, only: [:show, :edit, :update, :destroy]

  # GET /autori
  # GET /autori.json
  def index
    @autori = Autor.all
  end

  # GET /autori/1
  # GET /autori/1.json
  def show
  end

  # GET /autori/new
  def new
    @autor = Autor.new
  end

  # GET /autori/1/edit
  def edit
  end

  # POST /autori
  # POST /autori.json
  def create
    @autor = Autor.new(autor_params)

    respond_to do |format|
      if @autor.save
        format.html { redirect_to autori_path, notice: 'Autor was successfully created.' }
        format.json { render :show, status: :created, location: @autor }
      else
        format.html { render :new }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autori/1
  # PATCH/PUT /autori/1.json
  def update
    respond_to do |format|
      if @autor.update(autor_params)
        format.html { redirect_to autori_path, notice: 'Autor was successfully updated.' }
        format.json { render :show, status: :ok, location: @autor }
      else
        format.html { render :edit }
        format.json { render json: @autor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autori/1
  # DELETE /autori/1.json
  def destroy
    @autor.destroy
    respond_to do |format|
      format.html { redirect_to autori_url, notice: 'Autor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autor
      @autor = Autor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autor_params
      params.require(:autor).permit(:jmeno, :prijmeni, :narodnost)
    end
end
