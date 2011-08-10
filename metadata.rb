maintainer       "dkd Internet Service GmbH"
maintainer_email "christian.trabold@dkd.de"
license          "All rights reserved"
description      "Installs/Configures redis"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.0.3"
recipe            "redis", "Includes the package recipe by default."
recipe            "redis::package", "Sets up a redis server."
recipe            "redis::gem", "Installs redis gem for ruby development."
recipe            "redis::source", "Builds redis server from sources. Not yet implemented."
recipe            "redis::remove", "Removes redis server and redis gem, if installed."

%w{ ubuntu debian }.each do |os|
  supports os
end