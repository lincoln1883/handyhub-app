class Job < ApplicationRecord
  validates :description, presence: true
  validates_presence_of :is_taken, presence: true, destroy: false
  validates_presence_of :is_completed, presence: true, default: false

  belongs_to :trade
  belongs_to :customer, class_name: 'User', foreign_key: :customer_id
  belongs_to :supplier, class_name: 'User', optional: true, foreign_key: :supplier_id
  belongs_to :city
  has_many :proposals
end
