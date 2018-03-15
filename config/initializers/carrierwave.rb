CarrierWave.configure do |config|

  config.fog_credentials = {
    :provider               => 'AWS',                             # required
    :aws_access_key_id      => 'AKIAIUFRV2OEIAJSZ4UA',            # required
    :aws_secret_access_key  => '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',     # required
    :region                 => 'us-west-1',                        # optional, defaults to 'us-east-1'
    :path_style             => true
  }
  config.fog_directory  = 'oddofficialimages'               # required
  #config.fog_host       = 'https://assets.example.com'           # optional, defaults to nil
  #config.fog_public     = false                                  # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}

  # Use local storage if in development or test
  if Rails.env.development? || Rails.env.test?
    CarrierWave.configure do |config|
      config.storage = :file
    end
  end

  # Use AWS storage if in production
  if Rails.env.production?
    CarrierWave.configure do |config|
      config.storage = :fog
    end
  end


end

# module CarrierWave
#   module MiniMagick
#     def quality(percentage)
#       manipulate! do |img|
#         img.quality(percentage.to_s)
#         img = yield(img) if block_given?
#         img
#       end
#     end
#   end
# end
