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
}
