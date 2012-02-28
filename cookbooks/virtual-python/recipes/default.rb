package "python-virtualenv"


bash "installing Python virtual environment" do
  user node[:virtualpy][:user]
  code <<-EOF
  export PATH=/usr/bin:/bin:/usr/local/bin
  virtualenv #{node[:virtualpy][:dir]}
  EOF
  only_if { node[:virtualpy][:user] && node[:virtualpy][:dir] }
  not_if "test -e #{node[:virtualpy][:dir]}"
end
