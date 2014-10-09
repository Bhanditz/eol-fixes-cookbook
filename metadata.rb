name             "eol-fixes"
maintainer       "Dmitry Mozzherin"
maintainer_email "dmozzherin@gmail.com"
license          "MIT"
description      "Installs/Configures eol-fixes"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.1.1"

%w(apt yum).each do |cb|
  depends cb
end
