class Reserve < ApplicationRecord
  belongs_to :account
  belongs_to :bicycle
end
