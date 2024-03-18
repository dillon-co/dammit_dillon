class AddEthWalletToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :eth_wallet_address, :string
  end
end
