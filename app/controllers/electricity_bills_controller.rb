class ElectricityBillsController < ApplicationController
  before_action :set_electricity_bill, only: [:show, :edit, :update, :destroy]

  # GET /electricity_bills
  # GET /electricity_bills.json
  def index
    @electricity_bills = ElectricityBill.all
  end

  # GET /electricity_bills/1
  # GET /electricity_bills/1.json
  def show
  end

  # GET /electricity_bills/new
  def new
    @electricity_bill = ElectricityBill.new
  end

  # GET /electricity_bills/1/edit
  def edit
  end

  # POST /electricity_bills
  # POST /electricity_bills.json
  def create
    @electricity_bill = ElectricityBill.new(electricity_bill_params)

    respond_to do |format|
      if @electricity_bill.save
        format.html { redirect_to @electricity_bill, notice: 'Electricity bill was successfully created.' }
        format.json { render action: 'show', status: :created, location: @electricity_bill }
      else
        format.html { render action: 'new' }
        format.json { render json: @electricity_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /electricity_bills/1
  # PATCH/PUT /electricity_bills/1.json
  def update
    respond_to do |format|
      if @electricity_bill.update(electricity_bill_params)
        format.html { redirect_to @electricity_bill, notice: 'Electricity bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @electricity_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /electricity_bills/1
  # DELETE /electricity_bills/1.json
  def destroy
    @electricity_bill.destroy
    respond_to do |format|
      format.html { redirect_to electricity_bills_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_electricity_bill
      @electricity_bill = ElectricityBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def electricity_bill_params
      params.require(:electricity_bill).permit(:start_date, :end_date, :electricity_day_consumption, :electricity_night_consumption, :day_cost, :night_cost, :gross_cost, :active, :members_id)
    end
end
