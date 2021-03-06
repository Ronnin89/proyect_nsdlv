class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[ show edit update destroy ]
  skip_before_action :verify_authenticity_token, only: [:new, :create]

  # GET /profiles or /profiles.json
  def index
    @profiles = Profile.all
  end

  # GET /profiles/1 or /profiles/1.json
  def show
  end

  # GET /profiles/new
  def new
    @profile = Profile.new
  end

  # GET /profiles/1/edit
  def edit
  end

  # POST /profiles or /profiles.json
  def create
    @profile = Profile.new(profile_params)

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: "Profile was successfully created." }
        format.json { render :show, status: :created, location: @profile }
        format.js {}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

  # PATCH/PUT /profiles/1 or /profiles/1.json
  def update
    
    respond_to do |format|
      if @profile.update(profile_params)
        format.html { redirect_to @profile, notice: "Profile was successfully updated." }
        format.json { render :show, status: :ok, location: @profile }
        format.js {}
        mail(@profile.id, @profile.updated_at)
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
        format.js {}
      end
    end
  end

  # DELETE /profiles/1 or /profiles/1.json
  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: "Profile was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_profile
      @profile = Profile.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def profile_params
      params.require(:profile).permit(
        :rut, :names, :last_names, :date_of_birth, :nationality, :sex, :address, :phone, :type_profile, :avatar, 
        child_attributes:[:id_fundation, :grade, :phone_secure, :entry, :egress, :profile_id],
        educator_attributes:[:type_educator, :profile_id])
    end
end
