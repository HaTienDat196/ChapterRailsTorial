class Microsoft < ApplicationRecord
  belongs_to :user
  validates :content, length: { maximum: 140 }
end
