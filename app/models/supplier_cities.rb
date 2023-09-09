class SupplierCities < ApplicationRecord
  belongs_to :supplier, class_name: 'User', foreign_key: :supplier_id
  belongs_to :city
end
