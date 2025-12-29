project('color-scheme-sync', 'rust', meson_version: '>= 1.5.0')

systemduserunitdir = get_option('systemduserunitdir')
prefix = get_option('prefix')

if systemduserunitdir == ''
  if prefix == '/usr' or prefix == '/usr/local'
    systemduserunitdir = 'lib' / 'systemd' / 'user'
  else
    systemduserunitdir = 'share' / 'systemd' / 'user'
  endif
endif


subdir('data')
subdir('src')
