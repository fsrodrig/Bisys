class ReserveHistory < ApplicationRecord
  belongs_to :reserve_state
  belongs_to :id_reserve
end
