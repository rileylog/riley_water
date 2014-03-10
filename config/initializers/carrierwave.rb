#comment out the two if statements for s3 to work in development

if Rails.env.production?
  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads"

    config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => ENV['S3_KEY'],                        # required
      :aws_secret_access_key  => ENV['S3_SECRET'],                     # required
      :region                 => ENV['S3_REGION'],                  # optional, defaults to 'us-east-1'
    }
    config.fog_directory  = ENV['S3_BUCKET_NAME']  
    # config.fog_host = "#{ENV['S3_ASSET_URL']}/#{ENV['S3_BUCKET_NAME']}"
    
  end
end
 
if Rails.env.development? or Rails.env.test?
  CarrierWave.configure do |config|
    config.cache_dir = "#{Rails.root}/tmp/uploads/dev"

    # config.fog_credentials = {
    #   :provider               => 'AWS',                        # required
    #   :aws_access_key_id      => ENV['S3_KEY'],                        # required
    #   :aws_secret_access_key  => ENV['S3_SECRET'],                     # required
    #   :region                 => ENV['S3_REGION'],                  # optional, defaults to 'us-east-1'
    # }
    # config.fog_directory  = ENV['DEV_S3_BUCKET_NAME']  
    # config.fog_host = "#{ENV['S3_ASSET_URL']}/#{ENV['S3_BUCKET_NAME']}"
    
  end
end