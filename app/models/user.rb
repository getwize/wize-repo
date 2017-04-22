class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  validates :business_name, presence: true

  has_many :members, dependent: :destroy

  def subscribed?
  	stripe_subscription_id?
  end
end
