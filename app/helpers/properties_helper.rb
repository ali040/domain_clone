module PropertiesHelper
  def property_thumbnail(property, width, height)
    img = property.photo.present? ? property.photo : "placeholder.png"
    image_tag(
      img,
      class: "property-thumb",
      style: "width:#{width} ; height:#{height};"
    )
  end
  def property_photo_full_size(property)
    img = property.photo.present? ? property.photo : "placeholder.png"
    image_tag(img, class: "property-photo")
  end
  def created_before_time(property)
    t = property.created_at
    t.strftime("at %I:%M %p")
  end
end
