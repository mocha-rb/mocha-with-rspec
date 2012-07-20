## Demo of Mocha/Rspec integration

### How it works

- Depending on which mocking framework is selected in the configuration, `RSpec::Core::MockFrameworkAdapter` is defined with 3 methods: `#setup_mocks_for_rspec`, `#verify_mocks_for_rspec`, and `#teardown_mocks_for_rspec` which in the case of Mocha integration are used to call `Mocha::API#mocha_setup`, `Mocha::API#mocha_verify`, and `Mocha::API#mocha_teardown` respectively. `Mocha::API` is also included into `RSpec::Core::MockFrameworkAdapter` so that Mocha API methods are available within Rspec specs.
- Dedicated mocking framework hooks.
- No monkey-patching necessary.
- No concerns about needing to call `#super` in setup/teardown-type methods.