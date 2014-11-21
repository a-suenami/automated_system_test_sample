## Welcome to automated system test sample

This repository is sample code of autometed system test with Ruby and RSpec.
`production` directory include typical web application by Ruby on Rails and `system_tests` directory include automated test suites by RSpec, Turnip, and Capybara. But the codes under `system_tests` directory doesn't depend on architecture of production. Thease system test suites describe and check behaviors of production that build any programming language except Ruby or any framework except Ruby on Rails.

## Getting Started

1. Clone this repository:

        git clone git@github.com:a-suenami/automated_system_test_sample.git

2. Set up the sample production and start the web server:

        cd automated_system_test_sample
        bundle install
        bundle exec rake db:create db:migrate
        bundle exec rails server

3. Set up the system test suites and run tests:

        cd ../system_tests
        bundle install
        bundle exec rspec

## My dream

In my opinion system test suites have following requirements:

1. These are valuable for documents.
2. These can be described by non-programmmers with natural language ( not programming language ).
3. These doesn't depend on the architecture of product. These depend on only HTTP and HTTPS protocol.

I aim at the above.
