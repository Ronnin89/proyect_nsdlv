class EducatorsController < ApplicationController
  before_action :set_educator, only: %i[ show edit update destroy ]

  # GET /educators or /educators.json
  def index
    if(params[:q])
      @educators = Profile.where('type_profile = ? AND names LIKE ? OR last_names LIKE ?', 1, "%#{params[:q]}%", "%#{params[:q]}%")
    else
      @educators = Profile.where(type_profile: 1)
    end
  end

  # GET /educators/1 or /educators/1.json
  def show
  end

  # GET /educators/new
  def new
    @educator = Educator.new
  end

  # GET /educators/1/edit
  def edit
  end

  # POST /educators or /educators.json
  def create
    @educator = Educator.new(educator_params)

    respond_to do |format|
      if @educator.save
        format.html { redirect_to @educator, notice: "Educator was successfully created." }
        format.json { render :show, status: :created, location: @educator }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /educators/1 or /educators/1.json
  def update
    respond_to do |format|
      if @educator.update(educator_params)
        format.html { redirect_to @educator, notice: "Educator was successfully updated." }
        format.json { render :show, status: :ok, location: @educator }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @educator.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /educators/1 or /educators/1.json
  def destroy
    @educator.destroy
    respond_to do |format|
      format.html { redirect_to educators_url, notice: "Educator was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_educator
      @educator = Educator.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def educator_params
      params.require(:educator).permit(:type_educator, :profile_id)
    end
end
