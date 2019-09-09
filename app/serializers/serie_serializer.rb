class SerieSerializer < ActiveModel::Serializer
  attributes :id, :name, :status, :img

  belongs_to :genre
end
