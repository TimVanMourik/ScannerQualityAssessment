class Scanner < ApplicationRecord
  has_many :sessions, dependent: :destroy
end
