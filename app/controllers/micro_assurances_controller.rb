class MicroAssurancesController < ApplicationController
  before_action :set_micro_assurance, only: [:show, :edit, :update, :destroy]

  # GET /micro_assurances
  # GET /micro_assurances.json
  def index
    @micro_assurances = MicroAssurance.all
  end

  # GET /micro_assurances/1
  # GET /micro_assurances/1.json
  def show
  end

  # GET /micro_assurances/new
  def new
    @micro_assurance = MicroAssurance.new
  end

  # GET /micro_assurances/1/edit
  def edit
  end

  # POST /micro_assurances
  # POST /micro_assurances.json
  def create
    @micro_assurance = MicroAssurance.new(micro_assurance_params)

    respond_to do |format|
      if @micro_assurance.save
        format.html { redirect_to @micro_assurance, notice: 'Micro assurance was successfully created.' }
        format.json { render :show, status: :created, location: @micro_assurance }
      else
        format.html { render :new }
        format.json { render json: @micro_assurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /micro_assurances/1
  # PATCH/PUT /micro_assurances/1.json
  def update
    respond_to do |format|
      if @micro_assurance.update(micro_assurance_params)
        format.html { redirect_to @micro_assurance, notice: 'Micro assurance was successfully updated.' }
        format.json { render :show, status: :ok, location: @micro_assurance }
      else
        format.html { render :edit }
        format.json { render json: @micro_assurance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /micro_assurances/1
  # DELETE /micro_assurances/1.json
  def destroy
    @micro_assurance.destroy
    respond_to do |format|
      format.html { redirect_to micro_assurances_url, notice: 'Micro assurance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_micro_assurance
      @micro_assurance = MicroAssurance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def micro_assurance_params
      params[:micro_assurance]
    end
end
