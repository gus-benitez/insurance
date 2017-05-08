class Customer < ActiveRecord::Base
  validates :first_name, {presence: true}
  validates :last_name, {presence: true}
  validates :birthday, {presence: true}
  validate :validate_date_birthday
  validates :gender, {presence: true}
  validates :mobile_phone, {presence: true}
  validates :email, {presence: true}
  validates :address, {presence: true}
  validates :city, {presence: true}
  validates :state, {presence: true}
  validates :zip_code, {presence: true, :length => {minimum: 5} }

  private

  def validate_date_birthday
    if birthday.year > (Date.today.year - 15)
      errors.add( "The birthday date must be greater than ",(Date.today.year - 15).to_s + (birthday.strftime "-%m-%d").to_s )
    end    
  end
end
