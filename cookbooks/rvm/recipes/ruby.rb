include_recipe "build-essential"

bash "installing Ruby via RVM" do
  user "#{node[:rvm][:user]}"
  code <<-EOF
  export HOME=$(echo ~#{node[:rvm][:user]})
  export PATH=$PATH:$HOME/.rvm/bin
  rvm pkg install zlib
  rvm install #{node[:rvm][:ruby]} --with-zlib-dir=$HOME/.rvm/usr
  EOF
  only_if { node[:rvm][:user] && node[:rvm][:ruby] }
end
