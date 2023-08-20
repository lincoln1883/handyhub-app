class Proposal < ApplicationRecord
  belongs_to :job, class_name: 'Job', foreign_key: job_id
  belongs_to :user, class_name: 'User', foreign_key: supplier_id

  validates :price, presence: true, nullable:false
  validates :expiration_date, presence: true, nullable: false
  validates :is_accepted, presence: true, nullable: false, default: false
end
