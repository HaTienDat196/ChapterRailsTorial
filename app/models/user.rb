class User < ApplicationRecord
  has_many :microsofts
  validates :name, presence: true
  validates :email, presence: true
end
