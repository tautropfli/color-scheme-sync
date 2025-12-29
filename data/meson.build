service_conf = configuration_data()
service_conf.set('prefix', get_option('prefix'))

configure_file(
  input: 'color-scheme-sync.service.in',
  output: 'color-scheme-sync.service',
  configuration: service_conf,
  install: true,
  install_dir: systemduserunitdir)
