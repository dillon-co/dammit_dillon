class Donation < ApplicationRecord
  # include HTTParty
  # base_uri "https://legend.lnbits.com"

  after_create :create_lightning_invoice
  belongs_to :user, optional: true

  enum status: { awaiting_payment: 0, completed: 1, cancled: 2 }

  def create_lightning_invoice
    response = HTTParty.post(ENV['INVOICE_URL'], 
                            body: { out: false, amount: amount_in_sats, memo: "Dammit Dillon Donation", webhook: "https://rainforest-payments.herokuapp.com/api/v1/invoices/#{self.id}/paid" }.to_json, 
                            headers: { 'X-Api-Key' => ENV['INVOICE_API_KEY'], 'Content-Type' => 'application/json'} 
                            )
    if response.success?
      self.payment_hash = response['payment_hash']
      self.payment_request = response['payment_request']
      self.status = :awaiting_payment
      save
    end
  end  
end
