maintainer        "Brian M. Clapper"
maintainer_email  "bmc@clapper.org"
license           "BSD"
description       "Uses virtualenv to install Python. Uses node[:virtualpy][:user]"
version           "0.1"

recipe "virtual-python", "Uses virtualenv to install a Python"

%w{ ubuntu debian }.each do |os|
  supports os
end
