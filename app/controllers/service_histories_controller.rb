class ServiceHistoriesController < ApplicationController
  before_action :set_service_history, only: %i[ show edit update destroy ]

  # GET /service_histories or /service_histories.json
  def index
    # @service_histories = ServiceHistory.where(customer_id: current_user.id)

    if current_user.admin==true 
      @customers = Customer.all
    else
      @customers = Customer.where(user_id: current_user.id)
    end
    # @customers=Customer.all
    # @users=current_user

    
    @users=User.all
    @service_histories=ServiceHistory.all
    a=Product.find_by(id: 1)
    @orderables=a.orderables
    @products=Product.all


    # if current_user.admin==true 
    #   @service_histories = ServiceHistory.all
    # else
    #   @service_histories = ServiceHistory.where(user_id: current_user.id)
    # end
  
  end

  # GET /service_histories/1 or /service_histories/1.json
  def show
    @service_histories = ServiceHistory.find(params[:id])
    @user=User.all
    # @customer = @service_histories.customers.all
    # @products=@service_history.products.all
     #@bookings=@car.bookings.all

  end

  # GET /service_histories/new
  def new
    @service_history = ServiceHistory.new
    @users=current_user
    # @customers=Customer.all
    # b= @users.username   
    # @service_histories=ServiceHistory.all
    
  end

  # GET /service_histories/1/edit
  def edit
  end

  # POST /service_histories or /service_histories.json
  def create
    @service_history = ServiceHistory.new(service_history_params)

    # +++++++++++++++++++++++++++++++++++++++++++++++++++++
    # @customer = Customer.find(params[:customer_id])
    # @service_history = @customer.service_histories.create(service_history_params)
    # redirect_to article_path(@article)


      # +++++++++++++++++++++++++++++++++++++++++++++++++++++

    respond_to do |format|
      if @service_history.save
        format.html { redirect_to service_history_url(@service_history), notice: "Service history was successfully created." }
        format.json { render :show, status: :created, location: @service_history }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @service_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /service_histories/1 or /service_histories/1.json
  def update
    respond_to do |format|
      if @service_history.update(service_history_params)
        format.html { redirect_to service_history_url(@service_history), notice: "Service history was successfully updated." }
        format.json { render :show, status: :ok, location: @service_history }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @service_history.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /service_histories/1 or /service_histories/1.json
  def destroy
    @service_history.destroy

    respond_to do |format|
      format.html { redirect_to service_histories_url, notice: "Service history was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service_history
      @service_history = ServiceHistory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def service_history_params
      params.require(:service_history).permit(:customer_id, :product_id, :startdate, :enddate, :status, :amount_paid, :amount_due)
    end
end
