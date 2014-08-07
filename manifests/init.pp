class ergroupkeys {

  $user_name = $operatingsystem ? {
    'CentOS' => 'root',
    'RedHat' => 'ec2-user',
    'Ubuntu' => 'ubuntu',
  }

  Ssh_authorized_key {
    user => $user_name,
  }

  ssh_authorized_key { 'chrisbarker':
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQCufvNyNaJo/wI2x3Goo86Qke9Lr9pINzhPLNXNqElcMTR4wrEM9134QNztfDFf+RYKTAKOWn/75d5zFxXQRm464Pay1Omx5Fh5syUWVSXGsMfWl9jWJYTxPlRon7opIGhCFFEO+87+7qMCA3wmERWvhEhionQA16qbMrGJ1Xbq4oMX2vhMJjfgihj6rQefHIPwhR7rrfzNQclqWiq4hpTeEFvaq+xB8zMyzRLRQsyvWcSkjOOiMeN9IwDLFVGM+pKZS/gFPvDGJNFdVHbNfu0AD2lvrE6WWjpa9retNnWy/XlEcYkYq3NnWSNMKlDbo/3GtX0oLJSeHEWWy9mmWwUx",
    type   => "ssh-rsa",
  }

  ssh_authorized_key { 'brett@Bretts-MacBook-Pro.local':
    ensure => present,
    key    => "AAAAB3NzaC1yc2EAAAADAQABAAABAQDE+HDSj8nyIMGKE5T2laQnj3YfDP/BtN6PwgGLWQ0gwsSF2JzEagNb3gYBw1vvXyLYRcu8H0NVjiyHrlh1WvIStKOtTkiGgRn2o4+Iybjb78G0RqjWAdlBhLFgulPAfNyVV8c4F5ojbl+EN+5pgVrw+E9kKdIG0q46IKH1C9ays30KqccHewGJ3pm0rI00AtaNW6EA27ZPil9aza6K6q0tOA+IJjH9IBMixRq1leVDdrzzaWI1d4nIVzblWAhh0eDFLhkU2nECsGpaIEDdt4mP7MiwIiQq4r0ODFZ2jAtC291aFacd17pMCegoJxM4K+TlIaf1FVPOR4SOyzCtgMY7",
    type   => "ssh-rsa",
  }

  ssh_authorized_key { 'reid.2014-04-17@puppetlabs.com':
    ensure => present,
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDMlV83Evx6LhGFJ+hWKekION/ANE0E1gbNSWaonT5dqGjzR/AzUraacr5VT7duvQ25fhOTvn7z/xbIsIFRn0pTN45L1v7sRuErcM3jD8KCoUtyon85+gZlqnapKFbqx2ESAIt9cCqGabr3ITUB9Z10mjzfI1r/NX8C/o/8NwXSIkytpA2OVh8jikaDg2sfLmD7Tt0CVUO3+QWVajY7nrIq42umNSEMWcy8wnLyz1l+WyCcTa6s56ouYtF4U5luRHRQuD3TNeBMu+mipocXFZ8ldcpFs5tOYTxTZv/riX81XaODRysW9JTO59pwJ4zImM+RxgWa9zLIzwAqd852j9PmZnh72y5oIXAq4HYzBN7NIjCRdQntlGWATBhN2c2h+UqevKTF8D3CRFxI5nCuoIE5FeHGySnueez07iCK3MiSjGmU9pbj2vu7DoJGnIyVHzY/rGsPVLHKMyHmPwaKyGXlK4kcksval2u5ayTXeLJfD5Z/w2lhz3Y/os+jBzdo3gr7J3OpyjC4f3HKandX4TE/MGsabz6IxL0VVL0yuztAH5MOi044VCOSNmXleAtB0Ls2HwaYSV3WlNyA+Ro9p01dbARTfkC6mUXftpzxfwbcFKwhW8UMhgFM1b0yKeCbMF1s5qaQBscRXNz7zKHLBe/fXBvuFm87D8m1Th+8Jmm29Q==',
    type   => "ssh-rsa",
  }
}
