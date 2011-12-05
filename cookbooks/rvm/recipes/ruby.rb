# Build a Ruby via RVM. Only known to work on Ubuntu.

include_recipe "build-essential"

# Packages need to build rubies.

package "curl"
package "git-core"
package "libreadline-dev"
package "libxml2-dev"
package "libssl-dev"
package "libxslt1-dev"

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
  if /home/#{node[:rvm][:user]}/.rvm/bin/rvm-ruby-installed #{node[:rvm][:ruby]}
  then
      :
  else
      rvm pkg install zlib
      rvm pkg install openssl
      rvm pkg install iconv
      rvm pkg install readline
      rvm install #{node[:rvm][:ruby]} --with-zlib-dir=$HOME/.rvm/usr --with-openssl-dir=$HOME/.rvm/usr --with-iconv-dir=$HOME/.rvm/usr --with-readline-dir=$HOME/.rvm/usr
  fi
  EOF
end
