class City < ApplicationRecord
  validates :name, presence: true, nullable: false
end
