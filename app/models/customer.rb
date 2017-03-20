class Customer < ApplicationRecord
  validates :full_name, presence: true
  validates :phone_number, length: { is: 10 }
  belongs_to :province
end
