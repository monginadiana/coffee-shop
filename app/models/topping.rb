class Topping < ApplicationRecord
  belongs_to :coffee, dependent: :delete
end
