require 'carrierwave/storage/abstract'
require 'carrierwave/storage/file'
require 'carrierwave/storage/fog'

# S3を使用しているかを判定するためのメソッド
def use_s3?
  Rails.application.secrets.aws_access_key_id && Rails.application.secrets.aws_secret_access_key &&  Rails.application.secrets.aws_region && Rails.application.secrets.aws_bucket_name
end

CarrierWave.configure do |config|
  if use_s3?
    config.fog_provider = 'fog/aws'
    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: Rails.application.secrets.aws_access_key_id,
      aws_secret_access_key: Rails.application.secrets.aws_secret_access_key,
      region: Rails.application.secrets.aws_region
    }

    # 公開・非公開の切り替え
    config.fog_public     = true
    # キャッシュの保存期間
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
    config.fog_directory  = Rails.application.secrets.aws_bucket_name
    config.fog_public     = false
    config.fog_authenticated_url_expiration = 60
    # 日本語ファイル名の設定
    CarrierWave::SanitizedFile.sanitize_regexp = /[^[:word:]\.\-\+]/
  end
  # public配下にキャッシュができると参照されてしまうので、予め変えておく。
  config.cache_dir = "#{Rails.root}/tmp/uploads"
end
