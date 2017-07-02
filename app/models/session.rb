class Session < ApplicationRecord
  belongs_to :scanner
  has_many :sequence_instances, dependent: :destroy

  default_scope { order scandate: :asc }
end
