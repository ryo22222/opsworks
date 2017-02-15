require 'json'
require 'yaml'
puts 'update stack custom json.'
custom_json = "'#{YAML.load_file('config/custom_json.yml').to_json}'"
system("aws --profile opsworks_iam opsworks --region us-east-1 update-stack --stack-id #{ENV['STACK_ID']} --custom-json #{custom_json}")
