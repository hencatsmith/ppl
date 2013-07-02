
class ppladdressbook {

	package { "git-core":
		ensure => present,
	}

	package { "build-essential":
		ensure => present,
	}

	package { "bundler":
		ensure   => present,
		provider => gem,
	}

	file { "/usr/local/src/ppladdressbook.org":
		ensure  => directory,
		mode    => 775,
		notify  => Exec["clone_site"],
		require => Package["git-core"],
	}

	exec { "clone_site":
		cwd         => "/usr/local/src/ppladdressbook.org",
		command     => "/usr/bin/git clone https://github.com/h2s/ppladdressbook.org.git .",
		creates     => "/usr/local/src/ppladdressbook.org/.git",
		refreshonly => true,
		user        => root,
	}

	exec { "bundle_install":
		cwd     => "/usr/local/src/ppladdressbook.org",
		command => "/opt/vagrant_ruby/bin/bundle install",
	}

	exec { "jekyll_build":
		cwd     => "/usr/local/src/ppladdressbook.org",
		command => "/opt/vagrant_ruby/bin/bundle exec jekyll build",
	}

}

