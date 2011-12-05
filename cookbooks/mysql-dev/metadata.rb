maintainer          "Brian M. Clapper"
maintainer_email    "bmc@clapper.org"
license             "BSD"
description         "MySQL dev. Installs mysql-dev, mysql-server and mysql-client"
version             "0.1"
recipe "mysql-dev", "MySQL development"

%w{ ubuntu debian }.each do |os|
  supports os
end
