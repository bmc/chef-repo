cookbook_file "/etc/sysctl.conf" do
  source  "sysctl.conf"
  owner   "root"
  group   "root"
  mode    0644
end

package "git-core"
package "ruby-dev"
package "rubygems"
package "curl"

gem_package "rake"
