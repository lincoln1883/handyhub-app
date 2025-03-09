class SupplierCities < ApplicationRecord
  belongs_to :supplier, class_name: 'User'
  belongs_to :city
end
