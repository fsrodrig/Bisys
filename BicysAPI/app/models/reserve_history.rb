class ReserveHistory < ApplicationRecord
  has_many :reserve_state
  has_many :reserve
end
