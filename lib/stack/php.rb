package :php do
  description "Installs PHP for use with static/WordPress sites"
  apt "libapache2-mod-php5 php5" do
    post :install, 'a2enmod php5'
    post :install, '/etc/init.d/apache2 restart'
  end
  
  requires :webserver
end