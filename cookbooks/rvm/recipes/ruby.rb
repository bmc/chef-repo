# Build a Ruby via RVM. Only known to work on Ubuntu.

include_recipe "build-essential"

# Packages need to build rubies.

package "curl"
package "git-core"
package "libreadline6"
package "libreadline6-dev"
package "libxml2-dev"
package "zlib1g"
package "zlib1g-dev"
package "libssl-dev"
package "openssl" 
package "libyaml-dev"
package "libsqlite3-0"
package "libsqlite3-dev"
package "sqlite3"
package "libxslt-dev"
package "autoconf"
package "libc6-dev"
package "ncurses-dev"
package "automake"
package "libtool"
package "bison"
package "subversion"

# Script to check if a Ruby is already installed.
cookbook_file "/home/#{node[:rvm][:user]}/.rvm/bin/rvm-ruby-installed" do
  source "rvm-ruby-installed"
  owner  node[:rvm][:user]
  mode   0755
end

# Building the Ruby.
bash "installing Ruby via RVM" do
  user node[:rvm][:user]
  code <<-EOF
  export HOME=$(echo ~#{node[:rvm][:user]})
  export PATH=$PATH:$HOME/.rvm/bin
  if $HOME/.rvm/bin/rvm-ruby-installed #{node[:rvm][:ruby]}
  then
      :
  else
      rvm install #{node[:rvm][:ruby]}
      if [ "x#{node[:rvm][:gemset]}" != "x" ]
      then
        rvm #{node[:rvm][:ruby]}
        rvm gemset create #{node[:rvm][:gemset]}
      fi
  fi
  EOF
end
