# Fix the incorrect WordPress locale filename causing Apache HTTP 500 errors
exec { 'fix-wordpress':
  command => '/bin/sed -i s/phpp/php/g /var/www/html/wp-settings.php',
  path    => ['/bin', '/usr/bin'],
  onlyif  => '/bin/grep -q phpp /var/www/html/wp-settings.php',
}
