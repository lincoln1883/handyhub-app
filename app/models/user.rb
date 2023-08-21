class User < ApplicationRecord
  validates :name, presence: true, nullable: false
  validates :email, presence: true, nullable: false, unique: true
  validates :password, presence: true, nullable: false
  validates :is_active, nullable: false
  validates :is_supplier, nullable: false
end
