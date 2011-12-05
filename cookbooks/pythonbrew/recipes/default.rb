
bash "installing system-wide Pythonbrew" do
  user "root"
  code "curl -kL http://xrl.us/pythonbrewinstall | bash"
  not_if "test -e /usr/local/pythonbrew"
end
