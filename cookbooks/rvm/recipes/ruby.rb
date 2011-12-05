bash "installing Ruby via RVM" do
  user node[:rvm][:user]
  code "rvm install #{node[:rvm][:ruby]}"
  only_if { node[:rvm][:user] && node[:rvm][:ruby] }
end
