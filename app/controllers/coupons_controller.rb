class CouponsController < ApplicationController

  def index
    @coupons = Coupon.all
  end

  def new
  end

  def create
    Coupon.create params[:coupon]
    redirect_to coupon_path
  end

  def show
    @coupon = Coupon.find params[:id]
  end
end
