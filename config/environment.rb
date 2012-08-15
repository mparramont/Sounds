# Load the rails application
require File.expand_path('../application', __FILE__)
ENV['S3_BUCKET_NAME'] = 'sounds-assets'
ENV['AWS_ACCESS_KEY_ID'] = 'AKIAJ5IPKBBOV4JYISCA'
ENV['AWS_SECRET_ACCESS_KEY'] = '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'
# Initialize the rails application
Sounds::Application.initialize!
