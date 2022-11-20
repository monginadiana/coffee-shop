class Coffee < ApplicationRecord
  belongs_to :user, dependent: :delete
end
