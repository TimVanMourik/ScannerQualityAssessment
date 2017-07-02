class SequenceInstance < ApplicationRecord
  belongs_to :session
  belongs_to :sequence
end
