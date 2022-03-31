require 'obscenity/active_model'
class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true, obscenity: { sanitize: true, replacement: :garbled }

  def name
    "#{first_name} #{last_name}"
  end
end
