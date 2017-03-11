# puppetmaster
node ip-10-0-14-122 {
	# check for puppet configuration updates every five minutes
	cron { "puppet update":
		command => "cd /etc/puppet && git pull -q origin master",
		user    => root,
		minute 	=> "*/5",
	}
}

# web1
node ip-10-0-14-193 {
	include apache2
}

# web2
node ip-10-0-14-186 {
	include apache2
}