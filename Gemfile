source 'https://rubygems.org'

# Temp use a fork until https://github.com/opscode/omnibus-ruby/pull/68 is merged
gem 'omnibus', :git => 'https://github.com/keviny22/omnibus-ruby.git', :ref => 'aa701e53b1ec3a3a07ac69ef3e1b6b85d7f57a71'

gem 'omnibus-software', :git => 'git://github.com/opscode/omnibus-software.git', :ref => 'd8af8ab2a777ab1f08812b7c24afa87d5a795103'

group :jenkins do
  gem 'chef'
  gem 'knife-ec2'
end
