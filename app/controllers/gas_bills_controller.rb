class GasBillsController < ApplicationController
  before_action :set_gas_bill, only: [:show, :edit, :update, :destroy]

  # GET /gas_bills
  # GET /gas_bills.json
  def index
    @gas_bills = GasBill.all
  end

  # GET /gas_bills/1
  # GET /gas_bills/1.json
  def show
  end

  # GET /gas_bills/new
  def new
    @gas_bill = GasBill.new
  end

  # GET /gas_bills/1/edit
  def edit
  end

  # POST /gas_bills
  # POST /gas_bills.json
  def create
    @gas_bill = GasBill.new(gas_bill_params)

    respond_to do |format|
      if @gas_bill.save
        format.html { redirect_to @gas_bill, notice: 'Gas bill was successfully created.' }
        format.json { render action: 'show', status: :created, location: @gas_bill }
      else
        format.html { render action: 'new' }
        format.json { render json: @gas_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gas_bills/1
  # PATCH/PUT /gas_bills/1.json
  def update
    respond_to do |format|
      if @gas_bill.update(gas_bill_params)
        format.html { redirect_to @gas_bill, notice: 'Gas bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @gas_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gas_bills/1
  # DELETE /gas_bills/1.json
  def destroy
    @gas_bill.destroy
    respond_to do |format|
      format.html { redirect_to gas_bills_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gas_bill
      @gas_bill = GasBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gas_bill_params
      params.require(:gas_bill).permit(:start_date, :end_date, :gas_start_reading, :gas_end_reading, :net_cost, :gross_cost, :active, :members)
    end
end
