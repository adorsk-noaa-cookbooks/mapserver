include_recipe %w{apt}

# Add Ubuntu GIS repo.
apt_repository "ubuntugis" do
	uri "http://ppa.launchpad.net/ubuntugis/ppa/ubuntu"
    distribution node['lsb']['codename']
	components ["main"]
    keyserver "keyserver.ubuntu.com"
    key "314DF160"
end
