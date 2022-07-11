class GameSerializer
  include JSONAPI::Serializer
  attributes :name, :summary, :description, :release_date, :small_image, :normal_image, :platforms


end
