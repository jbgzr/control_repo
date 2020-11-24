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
	ssh_authorized_key { 'vagrant@master.puppet.vm':
		ensure => present,
		user   => 'vagrant',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD1UVN5pHopkbnVkuz6AO02sM1ssY3PTi2OzfEmElyJDq0F+wJvQaM9uDE2vWYuYKmbj8ALdeXDVFTN3QfR4oWJvHOnGoG16n7kaInML6+l1+kyxjT251euW+e9p16TameSCFMWR7UItYMPuNM04vpIzhUzshes0SZkkzaHhLUUMqxSk+vQoHxO4p3NaWwm6QL2e8cJTSq6fIGSRLgLLfci9nhE0F+x0xNuTbA5uMsajev/OQTZOX/o8BKPuP4pTx3cc2eQoJqVwDRLQ1mEdrc5HS0MP4NWtWYCM5IsrLwLB44VboH0sBS/UhXoDad9s4zu8wODBqX5+ltrPuDHoZ7D',
	} 
	
	
}
