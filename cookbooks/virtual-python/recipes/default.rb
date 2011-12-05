package "python-virtualenv"


bash "installing Python virtual environment" do
  user node[:virtualpy][:user]
  code "virtualenv #{node[:virtualpy][:dir]}"
  only_if { node[:virtualpy][:user] && node[:virtualpy][:dir] }
end
