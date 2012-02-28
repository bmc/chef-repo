maintainer        "Brian M. Clapper"
maintainer_email  "bmc@clapper.org"
license           "Apache 2.0"
description       "Runs apt-get update"
version           "1.0.0"
recipe            "apt-update", "Update APT database"

%w{ ubuntu debian }.each do |os|
  supports os
end
