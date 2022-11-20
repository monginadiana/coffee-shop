class CoffeeSerializer < ActiveModel::Serializer
  attributes :id, :name, :price, :description, :image, :coffee_type
  has_one :user, dependent: :delete
end
