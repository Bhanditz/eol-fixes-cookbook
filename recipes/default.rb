case node["platform"]
when /ubuntu|debian/
  include_recipe "apt"
when /centos/
  include_recipe "yum"
end
