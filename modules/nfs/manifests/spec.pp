# Class: nfs::spec
#
# This class is used only for rpsec-puppet tests
# Can be taken as an example on how to do custom classes but should not
# be modified.
#
# == Usage
#
# This class is not intended to be used directly.
# Use it as reference
#
class nfs::spec inherits nfs {

  # This just a test to override the arguments of an existing resource
  # Note that you can achieve this same result with just:
  # class { "nfs": template => "nfs/spec.erb" }

  File['nfs.conf'] {
    content => template('nfs/spec.erb'),
  }

}
