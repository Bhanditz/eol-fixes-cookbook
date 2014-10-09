name             "eol-fixes"
maintainer       "Dmitry Mozzherin"
maintainer_email "dmozzherin@gmail.com"
license          "MIT"
description      "Installs/Configures eol-fixes"
long_description File.read(File.join(__dir__, "README.md"))
version          "0.1.1"

%w(apt yum).each do |cb|
  depends cb
end
