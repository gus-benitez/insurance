class Register::CustomersController < ApplicationController
  before_action :set_customer, only: [:show, :edit, :update]

  layout 'register'
  
  # GET /Customer/1
  def show
  end

  # GET /Customer/new
  def new
    @customer = Customer.new
  end

  # GET /Customer/1/edit
  def edit
  end

  # POST /Customer
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to [:register, @customer], notice: 'Customer was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /Customer/1
  # PATCH/PUT /Customer/1.json
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to [:register, @customer], notice: 'Customer was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer
      @customer = Customer.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def customer_params
      params.require(:customer).permit(:first_name, :last_name, :birthday, :gender, :mobile_phone, :other_phone, :email, :address, :city, :state, :zip_code, :comments)
    end
end
