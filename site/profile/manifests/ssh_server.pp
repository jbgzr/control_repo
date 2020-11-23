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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDTeJ2UzDmTd6p0+xIvjISdCA1wqnlEup1ZTeDmwwggdjHAgqUqsJvn1NMThvaJ2NZpHUNuOgc1wkukWQN8JJxQeaQRwlX9OKHXIbBVsnZZpM1GjX2FZFAJS/UcOA2nAKLzFt4xqlbv9b5W+mG5Stv7goC6w3LMSBVaPbQ1Ykwbbfy7aZmAGTw8z7bBXGCxubomXgbbkm7Tn0OzIm7bxMimBz+emLw70NlEVTTshwuYj255CZCjjixMj9Pb1IEhncRKzoZiQtAVWqKKZK9f9oCcASwtAxW8PEuvWCrckO2ZL+IQUJwbagQrKE0Du72ouunOWYLg98pvcnjyZsqOQFy7',
	}  
	ssh_authorized_key { 'vagrant@master.puppet.vm':
		ensure => present,
		user   => 'vagrant',
		type   => 'ssh-rsa',
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD1UVN5pHopkbnVkuz6AO02sM1ssY3PTi2OzfEmElyJDq0F+wJvQaM9uDE2vWYuYKmbj8ALdeXDVFTN3QfR4oWJvHOnGoG16n7kaInML6+l1+kyxjT251euW+e9p16TameSCFMWR7UItYMPuNM04vpIzhUzshes0SZkkzaHhLUUMqxSk+vQoHxO4p3NaWwm6QL2e8cJTSq6fIGSRLgLLfci9nhE0F+x0xNuTbA5uMsajev/OQTZOX/o8BKPuP4pTx3cc2eQoJqVwDRLQ1mEdrc5HS0MP4NWtWYCM5IsrLwLB44VboH0sBS/UhXoDad9s4zu8wODBqX5+ltrPuDHoZ7D',
	} 
	
	
}
