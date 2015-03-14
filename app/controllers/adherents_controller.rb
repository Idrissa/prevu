class AdherentsController < ApplicationController
  before_action :set_adherent, only: [:show, :edit, :update, :destroy]

  # GET /adherents
  # GET /adherents.json
  def index
    @adherents = Adherent.all
  end

  # GET /adherents/1
  # GET /adherents/1.json
  def show
  end

  # GET /adherents/new
  def new
    @adherent = Adherent.new
  end

  # GET /adherents/1/edit
  def edit
  end

  # POST /adherents
  # POST /adherents.json
  def create
    @adherent = Adherent.new(adherent_params)

    respond_to do |format|
      if @adherent.save
        format.html { redirect_to @adherent, notice: 'Adherent was successfully created.' }
        format.json { render :show, status: :created, location: @adherent }
      else
        format.html { render :new }
        format.json { render json: @adherent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /adherents/1
  # PATCH/PUT /adherents/1.json
  def update
    respond_to do |format|
      if @adherent.update(adherent_params)
        format.html { redirect_to @adherent, notice: 'Adherent was successfully updated.' }
        format.json { render :show, status: :ok, location: @adherent }
      else
        format.html { render :edit }
        format.json { render json: @adherent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /adherents/1
  # DELETE /adherents/1.json
  def destroy
    @adherent.destroy
    respond_to do |format|
      format.html { redirect_to adherents_url, notice: 'Adherent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_adherent
      @adherent = Adherent.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def adherent_params
      params.require(:adherent).permit(:nom, :prenom, :status_matrimonial, :date_de_naissance, :lieu_de_naissance, :adresse, :telephone1, :telephone2, :email, :username, :password, :password_confirmation, :status, :payer, :last_activation, :last_suspension, :last_delete, :paiement_date, :montant_cotisation)
    end
end
