class User < ApplicationRecord
  validates_presence_of :name, presence: true
  validates_presence_of :is_active, null: false
  validates_presence_of :is_supplier, null: false, default: false
  has_many :jobs, foreign_key: 'customer_id'
  has_many :supplier_jobs, class_name: 'Job', foreign_key: 'supplier_id'
  has_many :proposals
  has_many :supplier_trades, class_name: 'SupplierTrades', foreign_key: 'supplier_id'
  has_many :trades, through: :supplier_trades, source: :trade
  has_many :supplier_cities, class_name: 'City', foreign_key: :country_id
  has_many :cities
end
