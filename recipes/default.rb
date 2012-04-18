include_recipe %w{apt}

# Add Ubuntu GIS repo.
apt_repository "ubuntugis" do
	uri "http://ppa.launchpad.net/ubuntugis/ppa/ubuntu"
	components ["main"]
end

package_name = 'python-mapscript'
package "#{package_name}" do
	subscribes :run, resources(:execute => "apt-get update"), :immediately
end
