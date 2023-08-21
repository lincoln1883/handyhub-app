class Job < ApplicationRecord
  belongs_to :supplier, class_name: 'User', foreign_key: supplier_id
  belongs_to :trade, class_name: 'Trade', foreign_key: trade_id
  belongs_to :city, class_name: 'City', foreign_key: city_id

  validates :description, presence: true, nullable: false
  validates :is_taken, presence: true, default: false
  validates :is_completed, presence: true, default: false
end
