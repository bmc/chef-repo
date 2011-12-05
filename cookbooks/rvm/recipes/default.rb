
bash "installing user-local RVM" do
  user "#{node[:rvm][:user]}"
  code <<-EOF
  export HOME="/home/#{node[:rvm][:user]}"
  bash < <( curl -L https://rvm.beginrescueend.com/install/rvm)
  EOF
end
