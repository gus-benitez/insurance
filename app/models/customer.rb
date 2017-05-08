class Customer < ActiveRecord::Base
  validates :first_name, {presence: true}
  validates :last_name, {presence: true}
  validates :birthday, {presence: true}
  validates :gender, {presence: true}
  validates :mobile_phone, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :city, {presence: true}
  validates :state, {presence: true}
  validates :zip_code, {presence: true, numericality: { only_integer: true }, length: {minimum: 5} }

end
