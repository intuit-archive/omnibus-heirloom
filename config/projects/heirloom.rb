name            "heirloom"
maintainer      "Intuit, Inc."
homepage        "https://github.com/intuit/heirloom"

install_path    "/opt/intu/heirloom"
build_version   ENV['version']
build_iteration ENV['iteration']

dependencies    ["preparation", "heirloom"]

exclude         "\.git*"
