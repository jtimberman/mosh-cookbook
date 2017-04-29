name             'mosh'
maintainer       'Brian Hays'
maintainer_email 'brian.hays@gmail.com'
license          'Apache 2.0'
description      'Installs mosh'
version          '0.5.0'

%w{ debian ubuntu mac_os_x mac_os_x_server redhat centos scientific amazon fedora gentoo arch }.each do |os|
  supports os
end

depends 'apt'
depends 'yum'
depends 'yum-epel'

unless defined?(Ridley::Chef::Cookbook::Metadata)
  source_url       'https://github.com/jtimberman/mosh-cookbook'
  issues_url       'https://github.com/jtimberman/mosh-cookbook/issues'
end
chef_version '>= 12.1' if respond_to?(:chef_version)
