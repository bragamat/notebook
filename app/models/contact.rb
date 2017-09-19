class Contact < ApplicationRecord
  belongs_to :kind
  has_one :Address
  has_many :phones
end
