class Trade < ApplicationRecord
  validates :description, presence: true, nullable: false, uniqueness: true
end
