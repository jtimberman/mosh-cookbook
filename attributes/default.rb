default['mosh']['install_type']    = 'package'
default['mosh']['version']         = '1.2.4'
default['mosh']['source_url']      = 'http://mosh.mit.edu/mosh-1.2.4.tar.gz'
default['mosh']['source_checksum'] = 'e74d0d323226046e402dd469a176075fc2013b69b0e67cea49762c957175df46'
default['mosh']['configure_flags'] = []
default['mosh']['source_depends']  = case node['platform']
                                     when 'ubuntu', 'debian'
                                       %w(protobuf-compiler
                                          libprotobuf-dev
                                          libboost-dev
                                          libutempter-dev
                                          libncurses5-dev
                                          zlib1g-dev)
                                     when 'redhat', 'centos', 'oracle', 'scientific', 'amazon'
                                       %w(protobuf-compiler
                                          protobuf-devel
                                          boost-devel
                                          libutempter-devel
                                          ncurses-devel
                                          zlib-devel)
                                     else
                                       []
                                     end
