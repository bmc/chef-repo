maintainer        "Brian M. Clapper"
maintainer_email  "bmc@clapper.org"
license           "BSD"
description       "Installs ruby and ruby-dev"
version           "0.1"
recipe            "ruby", "Installs ruby and ruby-dev"

%w{ubuntu debian}.each do |os|
  supports os
end
