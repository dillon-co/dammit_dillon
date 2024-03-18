class PagesController < ApplicationController
  def landing
    @title = "Bitcoin NFTs For Real World Art"
    @subtitle = "Buying an NFT on DammitDillon doesn't mean 
    you own the JPEG. It means you own a physical piece of art. 
    Once you've purchased your NFT we'll send you the piece. 
    If you ever want to sell your NFT, you can list it back on here.
    Once it's sold, we'll send you a shipping label for the new owner."
  end

  def dashboard
    @donation_count = Donation.count
    @donations_total = Donation.sum(:amount_in_sats)
    @highest_donation = Donation.maximum(:amount_in_sats)
    @user_contributions = current_user.donations.sum(:amount_in_sats)
    @donations = Donation.all
    @new_donation = Donation.new
  end
  
  def about
  end  

  def how_it_works
  end
  
  def timeline
  end  
end
