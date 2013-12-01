class OilBillsController < ApplicationController
  before_action :set_oil_bill, only: [:show, :edit, :update, :destroy]

  # GET /oil_bills
  # GET /oil_bills.json
  def index
    @oil_bills = OilBill.all
  end

  # GET /oil_bills/1
  # GET /oil_bills/1.json
  def show
  end

  # GET /oil_bills/new
  def new
    @oil_bill = OilBill.new
  end

  # GET /oil_bills/1/edit
  def edit
  end

  # POST /oil_bills
  # POST /oil_bills.json
  def create
    @oil_bill = OilBill.new(oil_bill_params)

    respond_to do |format|
      if @oil_bill.save
        format.html { redirect_to @oil_bill, notice: 'Oil bill was successfully created.' }
        format.json { render action: 'show', status: :created, location: @oil_bill }
      else
        format.html { render action: 'new' }
        format.json { render json: @oil_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /oil_bills/1
  # PATCH/PUT /oil_bills/1.json
  def update
    respond_to do |format|
      if @oil_bill.update(oil_bill_params)
        format.html { redirect_to @oil_bill, notice: 'Oil bill was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @oil_bill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /oil_bills/1
  # DELETE /oil_bills/1.json
  def destroy
    @oil_bill.destroy
    respond_to do |format|
      format.html { redirect_to oil_bills_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_oil_bill
      @oil_bill = OilBill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def oil_bill_params
      params.require(:oil_bill).permit(:start_date, :end_date, :volume, :net_cost, :gross_cost, :members_id)
    end
end
