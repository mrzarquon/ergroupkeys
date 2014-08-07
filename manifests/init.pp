class ergroupkeys {

  $user_name = $operatingsystem ? {
    'CentOS' => 'root',
    'RedHat' => 'ec2-user',
  }

  Ssh_authorized_key {
    user => $user_name,
  }

  ssh_authorized_key { 'chrisbarker':
    ensure => present,
    key    => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCufvNyNaJo/wI2x3Goo86Qke9Lr9pINzhPLNXNqElcMTR4wrEM9134QNztfDFf+RYKTAKOWn/75d5zFxXQRm464Pay1Omx5Fh5syUWVSXGsMfWl9jWJYTxPlRon7opIGhCFFEO+87+7qMCA3wmERWvhEhionQA16qbMrGJ1Xbq4oMX2vhMJjfgihj6rQefHIPwhR7rrfzNQclqWiq4hpTeEFvaq+xB8zMyzRLRQsyvWcSkjOOiMeN9IwDLFVGM+pKZS/gFPvDGJNFdVHbNfu0AD2lvrE6WWjpa9retNnWy/XlEcYkYq3NnWSNMKlDbo/3GtX0oLJSeHEWWy9mmWwUx chrisbarker",
    type   => "ssh-rsa",
  }

  ssh_authorized_key { 'brett@Bretts-MacBook-Pro.local':
    ensure => present,
    key    => "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDE+HDSj8nyIMGKE5T2laQnj3YfDP/BtN6PwgGLWQ0gwsSF2JzEagNb3gYBw1vvXyLYRcu8H0NVjiyHrlh1WvIStKOtTkiGgRn2o4+Iybjb78G0RqjWAdlBhLFgulPAfNyVV8c4F5ojbl+EN+5pgVrw+E9kKdIG0q46IKH1C9ays30KqccHewGJ3pm0rI00AtaNW6EA27ZPil9aza6K6q0tOA+IJjH9IBMixRq1leVDdrzzaWI1d4nIVzblWAhh0eDFLhkU2nECsGpaIEDdt4mP7MiwIiQq4r0ODFZ2jAtC291aFacd17pMCegoJxM4K+TlIaf1FVPOR4SOyzCtgMY7 brett@Bretts-MacBook-Pro.local",
    type   => "ssh-rsa",
  }
}
