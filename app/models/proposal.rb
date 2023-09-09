class Proposal < ApplicationRecord
  belongs_to :supplier, class_name: 'User', foreign_key: :users_id
  belongs_to :job

  validates :price, presence: true
  validates :expiration_date, presence: true
  validates_presence_of :is_accepted, presence: true, default: false
end
