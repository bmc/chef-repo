maintainer        "Brian M. Clapper"
maintainer_email  "bmc@clapper.org"
license           "BSD"
description       "Installs some additional terminfo files on Linux"
version           "0.1"

recipe "terminfo", "Installs additional terminfo files"

%w{ redhat centos fedora ubuntu debian }.each do |os|
  supports os
end
