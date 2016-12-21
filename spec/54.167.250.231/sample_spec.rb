require 'spec_helper'

describe package('httpd24') do 
  it { should be_installed }
end

describe package('apache2'), :if => os[:family] == 'ubuntu' do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_running }
end

describe port(80) do
  it { should be_listening }
end

describe command('curl http://'+ ENV['TARGET_HOST']) do
  its(:stdout) {should match /Automation for the people/ }
end
