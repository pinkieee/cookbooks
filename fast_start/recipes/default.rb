#
# Cookbook Name:: fast_start
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template "#{ENV['HOME']}/deep_thought.txt" do
  source "deep_thought.txt.erb"
  variables :deep_thought => node['deep_thought']
  action :create
end