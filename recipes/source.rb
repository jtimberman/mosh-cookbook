include_recipe 'build-essential'
include_recipe 'ark'

case node['platform']
when 'debian'
  package 'pkg-config'
else
  package 'pkgconf'
end

package 'libncurses5-dev'
package 'libprotobuf-dev'
package 'protobuf-compiler'
package 'libutempter-dev'
package 'libssl-dev'

ark 'mosh' do
  url node['mosh']['url']
  version node['mosh']['version']
  autoconf_opts node['mosh']['configure_options']
  make_opts node['mosh']['make_options']
  action [:configure, :install_with_make]
end
