include_recipe %w{apt postgresql}

# Add Ubuntu GIS repo.
apt_repository "ubuntugis" do
	uri "http://ppa.launchpad.net/ubuntugis/ppa/ubuntu"
	components ["main"]
end

package_name = 'postgresql-9.1-postgis'
package "#{package_name}" do
	subscribes :run, resources(:execute => "apt-get update"), :immediately
end
