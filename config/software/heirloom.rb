name "heirloom"
version "0.10.0"

dependencies ["libxslt", "libxml2", "rubygems", "ruby"]

env = { "GEM_HOME" => nil, "GEM_PATH" => nil }

build do
  gem "install heirloom -n #{install_dir}/bin --no-rdoc --no-ri -v #{version}", :env => env
end
