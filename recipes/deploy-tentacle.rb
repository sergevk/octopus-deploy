#
# Cookbook Name:: Octopus-Deploy
# Recipe:: Octopus-tentacle
#
# Copyright 2016, AccessSoftek
#
# All rights reserved - Do Not Redistribute
#

# install Octopus client


octopus_deploy_tentacle 'Tentacle' do
    action :install

    version '3.5.1'
    checksum 'd424184d4cf6e4e7586acb1cebe4112d537974a59ab78e19f2502d31f327ac62'
#    version '3.2.24'
#    checksum '147f84241c912da1c8fceaa6bda6c9baf980a77e55e61537880238feb3b7000a'
end

octopus_deploy_tentacle 'Tentacle' do
#    only_if { File.exist?("#{tentacle_install_location}") }
    only_if { File.exist?('E:\Program Files\Octopus\Tentacle\tentacle.exe') }
    action :configure
    trusted_cert 'FFA7F4BAC3BBB343CAE2CCB9DAD65623268650C6'
    home_path 'E:\Program Files\Octopus'
    app_path 'E:\Program Files\Octopus\Applications'
    config_path 'E:\Program Files\Octopus\Tentacle\Tentacle.config'
    cert_file 'E:\Program Files\Octopus\Tentacle\tentacle_cert.txt'
    configure_firewall true

#    config_path 'E:\Program Files\Octopus\Tentacle\Tentacle.config'
#    cert_file 'c:\windows\temp\tentacle_cert.txt'

end

