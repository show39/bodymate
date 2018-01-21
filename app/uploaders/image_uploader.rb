class ImageUploader < CarrierWave::Uploader::Base

  include CarrierWave::MiniMagick

  # S3を使用するか？
  if use_s3?
    storage :fog
  else
    storage :file
  end

  # S3やローカルの保存先
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  version :show do
    process resize_to_limit: [960, 360]
  end

  version :thumb do
    process resize_to_limit: [280, 140]
  end

  def extension_whitelist
    %w(jpg jpeg gif png)
  end

end
