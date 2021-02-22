class Campaign < ApplicationRecord
  belongs_to :user
  has_one :topic
  has_many :comments

  DURATION = [
    'within 1 week',
    'within 1 month',
    'within 3 months'
  ].freeze

  validates :duration, inclusion: { in: DURATION }
  validates :title, :duration, presence: true
end
