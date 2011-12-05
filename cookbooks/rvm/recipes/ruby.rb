include_recipe "build-essential"

cookbook_file "/home/#{node[:rvm][:user]}/.rvm/bin/rvm-ruby-installed" do
  source "rvm-ruby-installed"
  owner  node[:rvm][:user]
  mode   0755
end

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
      rvm install #{node[:rvm][:ruby]} --with-zlib-dir=$HOME/.rvm/usr
  fi
  EOF
end
