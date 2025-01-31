Gem::Specification.new do |s|
  s.name = 'logstash-filter-dissect'
  s.version = '1.2.4' # version will be checked against VERSION file by `rake vendor`
  s.licenses = ['Apache License (2.0)']
  s.summary = "Extracts unstructured event data into fields using delimiters"
  s.description = "This gem is a Logstash plugin required to be installed on top of the Logstash core pipeline using $LS_HOME/bin/logstash-plugin install gemname. This gem is not a stand-alone program"
  s.authors = ["Elastic"]
  s.email = 'info@elastic.co'
  s.homepage = "http://www.elastic.co/guide/en/logstash/current/index.html"
  s.require_paths = ["lib", "vendor/jars"]

  # Files
  s.files = Dir["lib/**/*","spec/**/*","vendor/jars/**/*","*.gemspec","*.md","CONTRIBUTORS","Gemfile","LICENSE","NOTICE.TXT", "vendor/jar-dependencies/**/*.jar", "vendor/jar-dependencies/**/*.rb", "VERSION", "docs/**/*"]
   # Tests
  s.test_files = s.files.grep(%r{^(test|spec|features)/})

  # Special flag to let us know this is actually a logstash plugin
  s.metadata = { "logstash_plugin" => "true", "logstash_group" => "filter" }

  # Gem dependencies
  s.add_runtime_dependency 'logstash-core-plugin-api', '>= 2.1.1', '<= 2.99'
  s.add_runtime_dependency 'jar-dependencies'

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'logstash-devutils'
end
