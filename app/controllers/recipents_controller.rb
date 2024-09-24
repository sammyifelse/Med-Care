class RecipentsController < ApplicationController
  before_action :set_recipent, only: %i[ show edit update destroy ]

  # GET /recipents or /recipents.json
  def index
    @recipents = Recipent.all
  end

  # GET /recipents/1 or /recipents/1.json
  def show
  end

  # GET /recipents/new
  def new
    @recipent = Recipent.new
  end

  # GET /recipents/1/edit
  def edit
  end

  # POST /recipents or /recipents.json
  def create
    @recipent = Recipent.new(recipent_params)

    respond_to do |format|
      if @recipent.save
        format.html { redirect_to @recipent, notice: "Recipent was successfully created." }
        format.json { render :show, status: :created, location: @recipent }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @recipent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /recipents/1 or /recipents/1.json
  def update
    respond_to do |format|
      if @recipent.update(recipent_params)
        format.html { redirect_to @recipent, notice: "Recipent was successfully updated." }
        format.json { render :show, status: :ok, location: @recipent }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @recipent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /recipents/1 or /recipents/1.json
  def destroy
    @recipent.destroy!

    respond_to do |format|
      format.html { redirect_to recipents_path, status: :see_other, notice: "Recipent was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipent
      @recipent = Recipent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def recipent_params
      params.require(:recipent).permit(:Name, :Age, :Gender, :Date_Of_registration, :Appointment_Status, :Details)
    end
end
