# Class for unit test learning with rspec-puppet
class rspec_test (
  Variant[Boolean, Enum['present', 'absent']] $ensure,
  Optional[String] $type_title = undef,
) {
  if $ensure == true or $ensure == 'present' {
    rspec_test::type { $type_title: }
  }
}
