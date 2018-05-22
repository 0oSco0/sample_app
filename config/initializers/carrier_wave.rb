if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3 的配置
      :provider              => 'AWS',
      :aws_access_key_id     => ENV[''],
      :aws_secret_access_key => ENV['']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end
