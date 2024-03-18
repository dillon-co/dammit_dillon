class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :art_works, :dependent => :destroy
  has_many :orders
  has_many :shipping_infos
  has_many :donations 

  enum role: { user: 0, admin: 1 }
end
