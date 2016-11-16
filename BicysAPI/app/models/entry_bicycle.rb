class EntryBicycle < ApplicationRecord
  belongs_to :bicycle_id
  belongs_to :entry_id
end
