# Encoding: utf-8
#
# Cookbook Name:: needle-docker-lab
# Recipe:: default
#
# Copyright (C) 2014 Needle, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

lab = node['needle']['docker_lab']

node.default['docker']['bind_uri'] = "tcp://0.0.0.0:#{lab['docker_tcp_port']}"

include_recipe 'docker::default'
