class Contact < ApplicationRecord
  belongs_to :kind
  has_one :Address
end
