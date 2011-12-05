include_recipe "sqlite"

package "libsqlite3-dev" do
  action :upgrade
end
