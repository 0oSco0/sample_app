if Rails.env.production?
  CarrierWave.configure do |config|
    config.fog_credentials = {
      # Amazon S3 的配置
      :provider              => 'AWS',
      :aws_access_key_id     => ENV['AKIAIK7TQA24Z7OMNBTQ'],
      :aws_secret_access_key => ENV['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']
    }
    config.fog_directory     =  ENV['S3_BUCKET']
  end
end