#
# Cookbook Name:: rtorrent
# Spec:: default_service
#
# Copyright (c) 2015 Cassiano Leal, Apache License v2.

require "spec_helper"

describe "rtorrent::default_service" do

  context "When all attributes are default, on an unspecified platform" do

    let(:runner) { ChefSpec::SoloRunner.new }
    let(:chef) { runner.converge(described_recipe) }

    it { chef } # This should not raise an error

    it { expect(chef).to include_recipe("rtorrent::default_service_init") }

  end

end
