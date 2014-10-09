name             'eol-fixes'
maintainer       'The Authors'
maintainer_email 'you@example.com'
license          'all_rights'
description      'Installs/Configures eol-fixes'
long_description 'Installs/Configures eol-fixes'
version          '0.1.0'

%w(apt yum).each do |cb|
  depends cb
end
