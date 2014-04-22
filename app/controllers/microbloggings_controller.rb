class MicrobloggingsController < ApplicationController
  before_action :set_microblogging, only: [:show, :edit, :update, :destroy]

  # GET /microbloggings
  # GET /microbloggings.json
  def index
    @microbloggings = Microblogging.all
  end

  # GET /microbloggings/1
  # GET /microbloggings/1.json
  def show
  end

  # GET /microbloggings/new
  def new
    @microblogging = Microblogging.new
  end

  # GET /microbloggings/1/edit
  def edit
  end

  # POST /microbloggings
  # POST /microbloggings.json
  def create
    @microblogging = Microblogging.new(microblogging_params)

    respond_to do |format|
      if @microblogging.save
        format.html { redirect_to @microblogging, notice: 'Microblogging was successfully created.' }
        format.json { render :show, status: :created, location: @microblogging }
      else
        format.html { render :new }
        format.json { render json: @microblogging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /microbloggings/1
  # PATCH/PUT /microbloggings/1.json
  def update
    respond_to do |format|
      if @microblogging.update(microblogging_params)
        format.html { redirect_to @microblogging, notice: 'Microblogging was successfully updated.' }
        format.json { render :show, status: :ok, location: @microblogging }
      else
        format.html { render :edit }
        format.json { render json: @microblogging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /microbloggings/1
  # DELETE /microbloggings/1.json
  def destroy
    @microblogging.destroy
    respond_to do |format|
      format.html { redirect_to microbloggings_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_microblogging
      @microblogging = Microblogging.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def microblogging_params
      params.require(:microblogging).permit(:name, :email, :contents)
    end
end
