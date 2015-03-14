class StructureAssurancesController < ApplicationController
  before_action :set_assurance, only: [:show, :edit, :update, :destroy]

  # GET /assurances
  # GET /assurances.json
  def index
    @structure_assurances = StructureAssurance.all
  end

  # GET /assurances/1
  # GET /assurances/1.json
  def show
  end

  # GET /assurances/new
  def new
    @structure_assurance = StructureAssurance.new
  end

  # GET /assurances/1/edit
  def edit
  end

  # POST /assurances
  # POST /assurances.json
  def create
    @structure_assurance = StructureAssurance.new(assurance_params)

    respond_to do |format|
      if @structure_assurance.save
        format.html { redirect_to @structure_assurance, notice: 'Assurance was successfully created.' }
        format.json { render :show, status: :created, location: @structure_assurance }
      else
        format.html { render :new }
        format.json { render json: @structure_assurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /assurances/1
  # PATCH/PUT /assurances/1.json
  def update
    respond_to do |format|
      if @structure_assurance.update(assurance_params)
        format.html { redirect_to @structure_assurance, notice: 'Assurance was successfully updated.' }
        format.json { render :show, status: :ok, location: @structure_assurance }
      else
        format.html { render :edit }
        format.json { render json: @structure_assurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /assurances/1
  # DELETE /assurances/1.json
  def destroy
    @structure_assurance.destroy
    respond_to do |format|
      format.html { redirect_to assurances_url, notice: 'Assurance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_assurance
      @structure_assurance = StructureAssurance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def assurance_params
      params.require(:structure_assurance).permit(:nom, :adresse, :date_adhesion, :numero_agrement, :couleur, :actif)
    end
end
