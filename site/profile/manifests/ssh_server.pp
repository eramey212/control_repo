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
		key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDI0v9hRrRegoad0pjxSHbJ2LHBcpyHk3B9bmJYiTq3FqaoOYCG+Kso39F26AsnCz0+70jKwx613OC2UKlRkPrMtXFNyMDDaCSoTx8s5qmpkkDRLBNPQzR6GfuQiDACtNh+DckPSk1nh44bLXrvQXcN8H8trmOISEK7MCN3azhmbNNzHlpAiXSuGLS2lwJXBtma+R+0EoPhaePm8R+yS+vJCoisQR99jpNaaUZTEnQIEUZi6ZJah3bXurqSpvCZvIS6T/BRWGEfNOcgbKhjuwf0FfrJJ5qPEtaPum8ZYGKBjQssoU67/HnP5Y/COCsbZze1vB/dbz2z4mjdkp970F7j',
	}  
}
