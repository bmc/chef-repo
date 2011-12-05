
bash "installing system-wide RVM" do
  user "root"
  code "bash < <( curl -L https://rvm.beginrescueend.com/install/rvm)"
  not_if "test -e /usr/local/rvm/bin/rvm"
end
