# Class for unit test learning with rspec-puppet
class rspec_test (
  String $type_title,
) {
    rspec_test::type { $type_title: }
  }
}
