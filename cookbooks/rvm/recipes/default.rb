
bash "installing user-local RVM" do
  user "#{node[:rvm][:user]}"
  code <<-EOF
  export HOME="/home/#{node[:rvm][:user]}"
  (
  /bin/bash < <( curl -L https://rvm.beginrescueend.com/install/rvm)
  exit 0
  )
  EOF
  not_if "test -d /home/#{node[:rvm][:user]}/.rvm"
end
