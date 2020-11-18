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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQD2og/quO8NrS+qkTJEILTKU3oup20lhXCqDCUiKWpK93kKtS9ONwZGbQxEZsUfrGagSQtHJfUb6YduBki498XgSCD3Z33SuL2M9Ays0B3iATTwtiOi3ZMa7psNag4vlHrpIx+CtzjW2a3C7FNrFU1kpuTFPoD1a6hJOpnqTouKPTTC46/Xf4N9rG+AGmSwAlRqgDOE7B7mMf+3exDu4mdSi0IuckiNop+1YLW+zJtBSo/fhCPkH467Gt5nw37hSZgDTXq9G7RNVVBk1roa4Rrm9WuxJzrCedIQoUFNaKJwmwcPDqQNwra0BnhiCmVGQhPmHdAIA9rECwBDaiNs3JaF',
	}  
}
