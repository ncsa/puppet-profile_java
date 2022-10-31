# @summary Profile for installing and managing Java.
#
# Profile for installing and managing Java.
#
# @param install_lock_files
#   Boolean - Install lock files or not.
#
# @param lock_files
#   Hash of lock files (and parent dir(s)).
#
# @param pkg_list
#   Array of package names to install.
#
# @example
#   include profile_java
class profile_java (
  Boolean $install_lock_files,
  Hash    $lock_files,
  Array   $pkg_list,
) {
  # Install packages
  $pkg_defaults = {
    ensure => 'installed',
  }
  ensure_packages($pkg_list, $pkg_defaults)

  # Install lock files (and parent dirs)
  $file_defaults = {
    ensure  => file,
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
  if $install_lock_files {
    ensure_resources('file', $lock_files, $file_defaults)
  }
}
