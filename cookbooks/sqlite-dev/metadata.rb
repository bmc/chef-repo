maintainer        "Brian M. Clapper"
maintainer_email  "bmc@clapper.org"
license           "BSD"
description       "Installs sqlite and sqlite-dev"
version           "0.1"
depends           "sqlite"

%w{ubuntu debian}.each do |os|
  supports os
end
