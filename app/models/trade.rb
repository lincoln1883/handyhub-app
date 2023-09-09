class Trade < ApplicationRecord
  has_many :jobs
  has_many :supplier_trades, through: :suppliers
  has_many :suppliers, through: :jobs
end
