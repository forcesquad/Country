class FsstatesController < ApplicationController
  before_action :set_fsstate, only: [:show, :edit, :update, :destroy]

  # GET /fsstates
  # GET /fsstates.json
  def index
    @fsstates = Fsstate.all
  end

  # GET /fsstates/1
  # GET /fsstates/1.json
  def show
  end

  # GET /fsstates/new
  def new
    @fsstate = Fsstate.new
  end

  # GET /fsstates/1/edit
  def edit
  end

  # POST /fsstates
  # POST /fsstates.json
  def create
    @fsstate = Fsstate.new(fsstate_params)

    respond_to do |format|
      if @fsstate.save
        format.html { redirect_to @fsstate, notice: 'Fsstate was successfully created.' }
        format.json { render :show, status: :created, location: @fsstate }
      else
        format.html { render :new }
        format.json { render json: @fsstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fsstates/1
  # PATCH/PUT /fsstates/1.json
  def update
    respond_to do |format|
      if @fsstate.update(fsstate_params)
        format.html { redirect_to @fsstate, notice: 'Fsstate was successfully updated.' }
        format.json { render :show, status: :ok, location: @fsstate }
      else
        format.html { render :edit }
        format.json { render json: @fsstate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fsstates/1
  # DELETE /fsstates/1.json
  def destroy
    @fsstate.destroy
    respond_to do |format|
      format.html { redirect_to fsstates_url, notice: 'Fsstate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fsstate
      @fsstate = Fsstate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fsstate_params
      params.require(:fsstate).permit(:name, :acronym, :fscountries_id)
    end
end
