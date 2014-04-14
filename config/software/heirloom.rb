name "heirloom"
version ENV['version']

dependencies ["libxslt", "libxml2", "rubygems", "ruby"]

env = { "GEM_HOME" => nil, "GEM_PATH" => nil }

build do
  gem "install heirloom -n #{install_dir}/bin --no-rdoc --no-ri -v #{version} --without jenkins --without jenkins", :env => env
end
