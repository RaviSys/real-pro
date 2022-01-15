class SocialPlatformsController < ApplicationController
  before_action :set_social_platform, only: %i[ show edit update destroy ]

  # GET /social_platforms or /social_platforms.json
  def index
    @social_platforms = SocialPlatform.all
  end

  # GET /social_platforms/1 or /social_platforms/1.json
  def show
  end

  # GET /social_platforms/new
  def new
    @social_platform = SocialPlatform.new
  end

  # GET /social_platforms/1/edit
  def edit
  end

  # POST /social_platforms or /social_platforms.json
  def create
    @social_platform = SocialPlatform.new(social_platform_params)

    respond_to do |format|
      if @social_platform.save
        format.html { redirect_to social_platform_url(@social_platform), notice: "Social platform was successfully created." }
        format.json { render :show, status: :created, location: @social_platform }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @social_platform.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /social_platforms/1 or /social_platforms/1.json
  def update
    respond_to do |format|
      if @social_platform.update(social_platform_params)
        format.html { redirect_to social_platform_url(@social_platform), notice: "Social platform was successfully updated." }
        format.json { render :show, status: :ok, location: @social_platform }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @social_platform.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /social_platforms/1 or /social_platforms/1.json
  def destroy
    @social_platform.destroy

    respond_to do |format|
      format.html { redirect_to social_platforms_url, notice: "Social platform was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_social_platform
      @social_platform = SocialPlatform.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def social_platform_params
      params.require(:social_platform).permit(:name, :url, :company_id)
    end
end
