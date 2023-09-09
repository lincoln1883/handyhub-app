class City < ApplicationRecord
  belongs_to :country
  has_many :jobs
  has_many :supplier_cities, class_name: 'User', foreign_key: :is_supplier
  has_many :suppliers, through: :jobs
end
