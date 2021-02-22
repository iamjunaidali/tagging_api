class Topic < ApplicationRecord
  belongs_to :campaign
  validates :name, presence: true
end
