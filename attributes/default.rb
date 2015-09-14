default['mosh']['install_type'] = 'package'
default['mosh']['package_name'] = 'mosh'
default['mosh']['use_ppa']      = false
default['mosh']['use_epel']     = false

case node['platform_family']
when 'debian'
  if platform?('ubuntu') && node['platform_version'].to_f < 12.04
    default['mosh']['use_ppa'] = true
  end
when 'rhel' then default['mosh']['use_epel'] = true
when 'gentoo' then default['mosh']['package_name'] = 'net-misc/mosh'
when 'freebsd' then default['mosh']['package_name'] = 'net/mosh'
end

# source
default['mosh']['version'] = '1.2.4'
default['mosh']['url'] = "http://mosh.mit.edu/mosh-#{node['mosh']['version']}.tar.gz"
default['mosh']['configure_options'] = []
default['mosh']['make_options']      = []
