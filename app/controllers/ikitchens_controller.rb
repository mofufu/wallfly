class IkitchensController < ApplicationController
  before_action :set_ikitchen, only: [:show, :edit, :update, :destroy]

  # GET /ikitchens
  # GET /ikitchens.json
  def index
    @ikitchens = Ikitchen.all
  end

  # GET /ikitchens/1
  # GET /ikitchens/1.json
  def show
  end

  # GET /ikitchens/new
  def new
    @ikitchen = Ikitchen.new
  end

  # GET /ikitchens/1/edit
  def edit
  end

  # POST /ikitchens
  # POST /ikitchens.json
  def create
    @ikitchen = Ikitchen.new(ikitchen_params)

    respond_to do |format|
      if @ikitchen.save
        format.html { redirect_to @ikitchen, notice: 'Ikitchen was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ikitchen }
      else
        format.html { render action: 'new' }
        format.json { render json: @ikitchen.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ikitchens/1
  # PATCH/PUT /ikitchens/1.json
  def update
    respond_to do |format|
      if @ikitchen.update(ikitchen_params)
        format.html { redirect_to @ikitchen, notice: 'Ikitchen was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ikitchen.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ikitchens/1
  # DELETE /ikitchens/1.json
  def destroy
    @ikitchen.destroy
    respond_to do |format|
      format.html { redirect_to ikitchens_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ikitchen
      @ikitchen = Ikitchen.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ikitchen_params
      params.require(:ikitchen).permit(:house_id, :sink, :cabinet, :stove, :floor)
    end
end
