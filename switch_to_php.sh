desired_version="$1"
current_version=`php -v |grep -Eow '^PHP [^ ]+' |awk '{ print $2 }' |awk -F. '{ printf("%d.%d\n", $1,$2); }'`

echo "You current PHP version is $current_version"
echo "Switching to PHP version $1..."

sudo a2dismod php$current_version
sudo a2enmod php$desired_version
echo "Restarting apache..."
sudo service apache2 restart
echo "Done."
echo "Updating alternatives..."
sudo update-alternatives --set php /usr/bin/php$desired_version
echo "Done"
