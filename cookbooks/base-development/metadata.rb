name              'base-development'
maintainer        "Brian M. Clapper"
maintainer_email  "bmc@clapper.org"
license           "BSD"
description       "Installs tools for a minimum Linux development machine"
version           "0.1"
recipe            "base-development", "Installs base development tools"

%w{ fedora redhat centos ubuntu debian }.each do |os|
  supports os
end
