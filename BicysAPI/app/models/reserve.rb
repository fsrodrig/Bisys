class Reserve < ApplicationRecord
  has_many :account
  has_many :bicycle
  belongs_to :reserve_history
end
