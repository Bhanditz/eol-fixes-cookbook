#
# Cookbook Name:: eol-fixes
# Recipe:: default
#
# Copyright (c) 2014 The Authors, All Rights Reserved.

package "bash" do
  action :upgrade
  only_if "env foo='() { echo not patched; }' bash -c foo| grep patched"
end
