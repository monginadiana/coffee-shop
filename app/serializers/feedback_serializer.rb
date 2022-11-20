class FeedbackSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  has_one :user, dependent: :delete
  has_one :coffee, dependent: :delete
end
