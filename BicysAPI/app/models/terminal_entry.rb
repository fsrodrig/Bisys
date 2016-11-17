class TerminalEntry < ApplicationRecord
belongs_to :terminal,  dependent: :destroy
end
