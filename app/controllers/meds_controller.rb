class MedsController < ApplicationController
  before_action :set_med, only: %i[show edit update destroy]

  # GET /meds or /meds.json
  def index
    @meds = Med.all
  end

  # GET /meds/daily_count.json
  def daily_count
    @daily_count = Med.group("DATE(created_at)").count
    render json: @daily_count
  end

  # GET /meds/1 or /meds/1.json
  def show
  end

  # GET /meds/new
  def new
    @med = Med.new
  end

  # GET /meds/1/edit
  def edit
  end

  # POST /meds or /meds.json
  def create
    @med = Med.new(med_params)

    respond_to do |format|
      if @med.save
        format.html { redirect_to @med, notice: "Med was successfully created." }
        format.json { render :show, status: :created, location: @med }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @med.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meds/1 or /meds/1.json
  def update
    respond_to do |format|
      if @med.update(med_params)
        format.html { redirect_to @med, notice: "Med was successfully updated." }
        format.json { render :show, status: :ok, location: @med }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @med.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meds/1 or /meds/1.json
  def destroy
    @med.destroy!

    respond_to do |format|
      format.html { redirect_to meds_path, status: :see_other, notice: "Med was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_med
    @med = Med.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def med_params
    params.require(:med).permit(:first_name, :last_name, :phone, :email, :DOB, :Adress)
  end
end
