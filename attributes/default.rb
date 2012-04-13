default['mosh']['install_type'] = case node['platform']
                                  when "freebsd"
                                    "source"
                                  else
                                    "package"
                                  end
default['mosh']['version'] = "1.1.3"
default['mosh']['source_url'] = "https://github.com/downloads/keithw/mosh/mosh-#{node['mosh']['version']}.tar.gz"
default['mosh']['source_checksum'] = "53234667e53625791ca43ced1ec43834cbd86a019c67ce5e4bd65556113c6eee"
default['mosh']['configure_flags'] = []
