execute "apt-get update"
package "apache2" do
action :install
end


service "apache2" do
        action [:enable, :start]
	end
execute "rm -rf /var/www"
link "/var/www" do
to  "/vagrant"
end


apt_package "elinks" do
action :install
end

