#
# Cookbook Name:: mosh
# Recipe:: default
#
# Copyright 2012, Joshua Timberman
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if node['mosh']['use_ppa']
  include_recipe 'apt'

  apt_repository 'mosh-ppa' do
    uri 'http://ppa.launchpad.net/keithw/mosh/ubuntu'
    distribution node['lsb']['codename']
    components ['main']
    keyserver 'keyserver.ubuntu.com'
    key '7BF6DFCD'
    action :add
  end
end

if node['mosh']['use_epel']
  include_recipe 'yum-epel'
end

package 'mosh' do
  package_name node['mosh']['package_name']
  action :install
end
