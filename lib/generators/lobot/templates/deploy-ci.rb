require 'yaml'
aws_conf_location = File.expand_path('../../ci.yml', __FILE__)
ci_server = YAML.load_file(aws_conf_location)["server"]['name']

role :ci, ci_server