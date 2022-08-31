class PhotoUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process resize_to_fit: [100, 100]

  storage :fog

  def store_dir
    "Uploads/#{model.class.to_S.underscore}/#{mounted_as}/#{model.id}"
  end

  version :thumb do
    process resize_to_fill: [50, 50]
  end

  def extension_allowlist
    %w[jpg jpeg gif png]
  end
  # def content_type_allowlist
  #   /image\//
  # end
  # def content_type_denylist
  #   ['application/text', 'application/json']
  # end
end
