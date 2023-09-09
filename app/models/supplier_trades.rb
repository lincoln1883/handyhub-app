class SupplierTrades < ApplicationRecord
  belongs_to :trade
  belongs_to :supplier, class_name: 'User', foreign_key: :users_id
end
