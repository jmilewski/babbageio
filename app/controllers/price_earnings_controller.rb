class PriceEarningsController < ApplicationController
  before_action :set_price_earning, only: [:show, :edit, :update, :destroy]

  # GET /price_earnings
  # GET /price_earnings.json
  def index
    @price_earnings = PriceEarning.all
  end

  # GET /price_earnings/1
  # GET /price_earnings/1.json
  def show
  end

  # GET /price_earnings/new
  def new
    @price_earning = PriceEarning.new
  end

  # GET /price_earnings/1/edit
  def edit
  end

  # POST /price_earnings
  # POST /price_earnings.json
  def create
    @price_earning = PriceEarning.new(price_earning_params)

    respond_to do |format|
      if @price_earning.save
        format.html { redirect_to @price_earning, notice: 'Price earning was successfully created.' }
        format.json { render :show, status: :created, location: @price_earning }
      else
        format.html { render :new }
        format.json { render json: @price_earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_earnings/1
  # PATCH/PUT /price_earnings/1.json
  def update
    respond_to do |format|
      if @price_earning.update(price_earning_params)
        format.html { redirect_to @price_earning, notice: 'Price earning was successfully updated.' }
        format.json { render :show, status: :ok, location: @price_earning }
      else
        format.html { render :edit }
        format.json { render json: @price_earning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_earnings/1
  # DELETE /price_earnings/1.json
  def destroy
    @price_earning.destroy
    respond_to do |format|
      format.html { redirect_to price_earnings_url, notice: 'Price earning was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_earning
      @price_earning = PriceEarning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def price_earning_params
      params.require(:price_earning).permit(:price, :earnings, :petotal)
    end
end
