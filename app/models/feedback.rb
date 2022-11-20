class Feedback < ApplicationRecord
  belongs_to :user, dependent: :delete
  belongs_to :coffee, dependent: :delete
end
