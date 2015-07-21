CarrierWave.configure do |config|
  if Rails.env.production? 
    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV["S3_ACCESS_KEY_ID"],
      :aws_secret_access_key  => ENV["S3_SECRET_ACCESS_KEY"],
      :region                 => 'ap-northeast-1'
    }

    config.fog_directory = ENV["S3_BUCKET_NAME"]
    config.asset_host = "https://s3-ap-northeast-1.amazonaws.com/#{ENV["S3_BUCKET_NAME"]}"
  else

    config.fog_credentials = {
      :provider               => 'AWS',
      :aws_access_key_id      => ENV["DEV_S3_ACCESS_KEY_ID"],
      :aws_secret_access_key  => ENV["DEV_S3_SECRET_ACCESS_KEY"],
      :region                 => 'ap-northeast-1'
    }

    config.fog_directory = ENV["DEV_S3_BUCKET_NAME"]
    config.asset_host = "https://s3-ap-northeast-1.amazonaws.com/#{ENV["DEV_S3_BUCKET_NAME"]}"
  end 

  # config.cache_dir = "#{Rails.root}/tmp/uploads"                  # To let CarrierWave work on heroku
  
end
