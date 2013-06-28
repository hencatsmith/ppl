
class nginx {

	package { "nginx":
		ensure => present,
	}

	service { "nginx":
		enable  => true,
		ensure  => running,
		require => Package["nginx"],
	}

	file { "/var/www/nginx-default": ensure => absent }
	file { "/etc/nginx/sites-enabled/default": ensure => absent }
	file { "/etc/nginx/sites-available/default": ensure => absent }

	file { "/var/www":
		ensure => directory,
		mode   => 775,
		owner  => 'www-data',
		group  => 'www-data',
	}

	file { "/var/www/ppladdressbook.org":
		ensure => directory,
		mode   => 775,
		owner  => 'www-data',
		group  => 'www-data',
	}

	file {  "/etc/nginx/nginx.conf":
		source  => 'puppet:///modules/nginx/nginx.conf',
		require => Package["nginx"],
		notify  => Service["nginx"];
	}

	file { "/etc/nginx/sites-available/ppladdressbook.org":
		source  => 'puppet:///modules/nginx/ppladdressbook.conf',
		require => Package["nginx"],
		notify  => Service["nginx"];

		"/etc/nginx/sites-enabled/ppladdressbook.org":
		ensure => "/etc/nginx/sites-available/ppladdressbook.org",
		require => File["/etc/nginx/sites-available/ppladdressbook.org"],
	}


}

