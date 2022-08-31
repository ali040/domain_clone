module PropertiesHelper
  def property_thumbnail(property)
    img = property.photo.present? ? property.photo : "placeholder.png"
    image_tag(
      img,
      class: "property-thumb",
      style: "width:250px ; height:250px;"
    )
  end
end
