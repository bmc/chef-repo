
bash "installing user-local RVM" do
  user "#{node[:rvm][:user]}"
  code <<-EOF
  export HOME="/home/#{node[:rvm][:user]}"
  bash -s stable < <( curl -L https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)
  EOF
  not_if "test -d /home/#{node[:rvm][:user]}/.rvm"
end
