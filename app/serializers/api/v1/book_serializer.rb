class Api::V1::BookSerializer < ActiveModel::Serializer
  attributes :id, :isbn, :title, :stock

  def isbn
    object.isbn = "1234567890qaz"
  end
end
