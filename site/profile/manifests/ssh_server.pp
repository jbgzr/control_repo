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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQC/r7ea7O312Sj1vWvZd1P0l9002OAWmac4GoqFPOQEB7PcpTFgITom2sfHNqe/QBxNZDLNSDpcqDCyjRPF9xFOP4g/rvoEINb2GKjg2YKUsDLNZsVKRpZEFynq/TmTHpzT2pNbsC4f3G2WTY3DuisU8Qh6uWzGHHcE8skH47U9tUswoz0Z94/BW3rno5eO/JXGPfTUYTiNSpL3A10aIL5P9fBpjhbZTQyh5n7PCPDkXOQNZchaUUS9tBfBBBoxz5IouRJUu+FxpoIjzcjzjHgCPlATfcljvbJfKDZxavNkFFgw4x5g4PHEamPpH240T/9LvyeeEII/dExV0HIte1kd',
	}  
	ssh_authorized_key { 'vagrant@master.puppet.vm':
		ensure => present,
		user   => 'vagrant',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD1UVN5pHopkbnVkuz6AO02sM1ssY3PTi2OzfEmElyJDq0F+wJvQaM9uDE2vWYuYKmbj8ALdeXDVFTN3QfR4oWJvHOnGoG16n7kaInML6+l1+kyxjT251euW+e9p16TameSCFMWR7UItYMPuNM04vpIzhUzshes0SZkkzaHhLUUMqxSk+vQoHxO4p3NaWwm6QL2e8cJTSq6fIGSRLgLLfci9nhE0F+x0xNuTbA5uMsajev/OQTZOX/o8BKPuP4pTx3cc2eQoJqVwDRLQ1mEdrc5HS0MP4NWtWYCM5IsrLwLB44VboH0sBS/UhXoDad9s4zu8wODBqX5+ltrPuDHoZ7D',
	} 
	
	
}
