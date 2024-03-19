class DonationsController < ApplicationController
  def new
    params[:donation_amount] ? @donation = Donation.new(amount_in_sats: params[:donation_amount]) : @donation = Donation.new
  end

  def create
    donation = Donation.new(donation_params)
   
    donation.user = current_user if user_signed_in?
    
    if donation.save
      redirect_to donation
    else
      render 'new'
    end
  end  

  def show
    @donation = Donation.find(params[:id])
  end

  private

  def donation_params
    params.require(:donation).permit(:amount_in_sats)
  end
end
