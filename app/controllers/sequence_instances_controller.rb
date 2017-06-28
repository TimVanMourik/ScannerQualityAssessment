class SequenceInstancesController < ApplicationController
  before_action :set_sequence_instance, only: [:show, :edit, :update, :destroy]

  # GET /sequence_instances
  # GET /sequence_instances.json
  def index
    @sequence_instances = SequenceInstance.all
  end

  # GET /sequence_instances/1
  # GET /sequence_instances/1.json
  def show
  end

  # GET /sequence_instances/new
  def new
    @sequence_instance = SequenceInstance.new
  end

  # GET /sequence_instances/1/edit
  def edit
  end

  # POST /sequence_instances
  # POST /sequence_instances.json
  def create
    @sequence_instance = SequenceInstance.new(sequence_instance_params)

    respond_to do |format|
      if @sequence_instance.save
        format.html { redirect_to @sequence_instance, notice: 'Sequence instance was successfully created.' }
        format.json { render :show, status: :created, location: @sequence_instance }
      else
        format.html { render :new }
        format.json { render json: @sequence_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sequence_instances/1
  # PATCH/PUT /sequence_instances/1.json
  def update
    respond_to do |format|
      if @sequence_instance.update(sequence_instance_params)
        format.html { redirect_to @sequence_instance, notice: 'Sequence instance was successfully updated.' }
        format.json { render :show, status: :ok, location: @sequence_instance }
      else
        format.html { render :edit }
        format.json { render json: @sequence_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sequence_instances/1
  # DELETE /sequence_instances/1.json
  def destroy
    @sequence_instance.destroy
    respond_to do |format|
      format.html { redirect_to sequence_instances_url, notice: 'Sequence instance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sequence_instance
      @sequence_instance = SequenceInstance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sequence_instance_params
      params.require(:sequence_instance).permit(:sequence_id, :analysed, :timestamp)
    end
end
