class profile::ssh_server {
	package {'openssh-server':
		ensure => present,
	}
	service { 'sshd':
		ensure => 'running',
		enable => 'true',
	}
	ssh_authorized_key { 'root@master.puppet.vm':
		ensure => present,
		user   => 'root',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDNjk5102Cq3ZlQVuUIwkNg/O4HLtNVatxqxhMLljOVkSIsIsmpvONoIaat+xycCE2gqw/Wl3dqgrNsIomGqSpfOT+bIsUcAtPF4x02if2DJeKEOOIJ2DOES+rgWjzjJnHsufPqV4DEK146vHyrpXfCkwwmqpiQeW8nCdR68XETWgJwqs7d4u6gI0FmUBWQKFvF6xXdAWITLHaK2hdTSkVOziM5aopJyzCJS9Kn6w0cksxmazJErHwvJC8c1ooAWpL7jYVgKz9AE+cilX9drtNbk3xwGQTzmWIYYl2pp3lMgVgVfNvcb7XtBrCDq4f54GmY8nIE0vegALiVLe6l6jk5',
	}  
}
