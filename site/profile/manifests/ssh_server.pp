class profile::ssh_server {
  package { 'openssh-server':
    ensure => present,
  }

  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }

  ssh_authorized_key { 'roor@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQCcJlEWX8Bwmwtvi+NXz0aul96kzcI72BHZ0M+SdNkpsGT3Jb3mb+knpTeHfgaPSxYERCPgTjw/qDAoEwxpIFeVowxF687LVtBm4mQtvF+6y+VFMLh87tesR+zXeP4k46V3e3CKA5elIAAEvrVz+nWFcumBu96WYGV4KaGofKHMrljqY5vkzEssP5tZLrgGWCmHvjO5vAUyVgYiLgeTcDq1ZupCttp8Zrf6+FwB4JeWAMiH36hXyBnKXz/8xWWNrI8MPdqlOvJpH1gpurb1av2UlSQJyuNUQcNy75o8ggCRg3JZN/t6spJkE390UCh72TrhxOLXeuYKAyUh3HV013dh',
  }
}
