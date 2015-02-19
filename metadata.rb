name             'mosh'
maintainer       'Joshua Timberman'
maintainer_email 'cookbooks@housepub.org'
license          'Apache 2.0'
description      'Installs mosh'
version          '0.4.0'

%w{ debian ubuntu mac_os_x mac_os_x_server redhat centos scientific amazon fedora gentoo arch }.each do |os|
  supports os
end

depends 'apt'
depends 'yum'
depends 'yum-epel'

unless defined?(Ridley::Chef::Cookbook::Metadata)
  # Prevent a crash when using this cookbook with Chef < 12
  source_url 'https://github.com/jtimberman/mosh-cookbook'        if respond_to?(:source_url)
  issues_url 'https://github.com/jtimberman/mosh-cookbook/issues' if respond_to?(:issues_url)
end
