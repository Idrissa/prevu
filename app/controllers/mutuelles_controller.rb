class MutuellesController < ApplicationController
  before_action :set_mutuelle, only: [:show, :edit, :update, :destroy]

  # GET /mutuelles
  # GET /mutuelles.json
  def index
    @mutuelles = Mutuelle.all
  end

  # GET /mutuelles/1
  # GET /mutuelles/1.json
  def show
  end

  # GET /mutuelles/new
  def new
    @mutuelle = Mutuelle.new
  end

  # GET /mutuelles/1/edit
  def edit
  end

  # POST /mutuelles
  # POST /mutuelles.json
  def create
    @mutuelle = Mutuelle.new(mutuelle_params)

    respond_to do |format|
      if @mutuelle.save
        format.html { redirect_to @mutuelle, notice: 'Mutuelle was successfully created.' }
        format.json { render :show, status: :created, location: @mutuelle }
      else
        format.html { render :new }
        format.json { render json: @mutuelle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mutuelles/1
  # PATCH/PUT /mutuelles/1.json
  def update
    respond_to do |format|
      if @mutuelle.update(mutuelle_params)
        format.html { redirect_to @mutuelle, notice: 'Mutuelle was successfully updated.' }
        format.json { render :show, status: :ok, location: @mutuelle }
      else
        format.html { render :edit }
        format.json { render json: @mutuelle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mutuelles/1
  # DELETE /mutuelles/1.json
  def destroy
    @mutuelle.destroy
    respond_to do |format|
      format.html { redirect_to mutuelles_url, notice: 'Mutuelle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mutuelle
      @mutuelle = Mutuelle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mutuelle_params
      params[:mutuelle]
    end
end
