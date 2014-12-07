name             'mosh'
maintainer       'Joshua Timberman'
maintainer_email 'cookbooks@housepub.org'
license          'Apache 2.0'
description      'Installs mosh'
version          '0.3.1'

%w{ debian ubuntu mac_os_x mac_os_x_server redhat centos scientific amazon fedora gentoo arch }.each do |os|
  supports os
end

depends 'apt'
depends 'yum'
