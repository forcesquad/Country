class FscountriesController < ApplicationController
  before_action :set_fscountry, only: [:show, :edit, :update, :destroy]

  # GET /fscountries
  # GET /fscountries.json
  def index
    @fscountries = Fscountry.all
  end

  # GET /fscountries/1
  # GET /fscountries/1.json
  def show
  end

  # GET /fscountries/new
  def new
    @fscountry = Fscountry.new
  end

  # GET /fscountries/1/edit
  def edit
  end

  # POST /fscountries
  # POST /fscountries.json
  def create
    @fscountry = Fscountry.new(fscountry_params)

    respond_to do |format|
      if @fscountry.save
        format.html { redirect_to @fscountry, notice: 'Fscountry was successfully created.' }
        format.json { render :show, status: :created, location: @fscountry }
      else
        format.html { render :new }
        format.json { render json: @fscountry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fscountries/1
  # PATCH/PUT /fscountries/1.json
  def update
    respond_to do |format|
      if @fscountry.update(fscountry_params)
        format.html { redirect_to @fscountry, notice: 'Fscountry was successfully updated.' }
        format.json { render :show, status: :ok, location: @fscountry }
      else
        format.html { render :edit }
        format.json { render json: @fscountry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fscountries/1
  # DELETE /fscountries/1.json
  def destroy
    @fscountry.destroy
    respond_to do |format|
      format.html { redirect_to fscountries_url, notice: 'Fscountry was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fscountry
      @fscountry = Fscountry.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fscountry_params
      params.require(:fscountry).permit(:name, :ddi, :currency)
    end
end
