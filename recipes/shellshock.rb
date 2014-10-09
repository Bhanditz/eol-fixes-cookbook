# Fixes bash vulnerability Shellshock
# http://en.wikipedia.org/wiki/Shellshock_(software_bug)

include_recipe "eol-fixes"

package "bash" do
  action :upgrade
  only_if "env foo='() { echo not patched; }' bash -c foo| grep patched"
end
