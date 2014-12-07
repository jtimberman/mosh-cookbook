# mosh cookbook

This cookbook will install [Mosh](http://mosh.mit.edu).

Mosh is packaged for most current major platforms. This cookbook leverages existing repositories - community or base/built in - by default. The installation strategy of compiling from source is not supported or recommended.

# Requirements

## Platforms

This cookbook should work on major platforms that package mosh, including Ubuntu 12.04+, Fedora, CentOS/RHEL (via EPEL), OS X (via homebrew), and others.

## Cookbooks

The following cookbooks are dependencies:

* [apt](https://supermarket.chef.io/cookbooks/apt) to seamlessly setup the PPA on Ubuntu older than 12.04.
* [yum-epel](https://supermarket.chef.io/cookbooks/yum) to seamlessly setup EPEL for RHEL paltforms.

# Attributes

See `attributes/default.rb` for default values.

* `node['mosh']['package_name']` - the name of the "mosh" package. change this if your platform doesn't name it "mosh."
* `node['mosh']['use_ppa']` - whether to use the Ubuntu PPA. Should only be necessary on Ubuntu versions earlier than 12.04.
* `node['mosh']['use_epel']` - whether to use EPEL. Should only be necessary on RHEL and derivatives. Fedora packages mosh, so it shouldn't be necessary there (Fedora is not considered an `rhel` platform).

# Recipes

## default

Installs the mosh package using the package installation instructions
from the [Mosh home page](http://mosh.mit.edu). Should work on the
following platforms:

* Ubuntu
* Debian
* Fedora
* ArchLinux
* Gentoo
* Mac OS X

# License and Author

Author:: Joshua Timberman <opensource@housepub.org>
Copyright:: Copyright (c) 2012-2014, Joshua Timberman
License:: Apache License, Version 2.0

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
