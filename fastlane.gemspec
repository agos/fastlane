# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/version'

Gem::Specification.new do |spec|
  spec.name          = "fastlane"
  spec.version       = Fastlane::VERSION
  spec.authors       = ["Felix Krause"]
  spec.email         = ["fastlane@krausefx.com"]
  spec.summary       = %q{Connect all iOS deployment tools into one streamlined workflow}
  spec.description   = %q{Connect all iOS deployment tools into one streamlined workflow}
  spec.homepage      = "https://fastlane.tools"
  spec.license       = "MIT"

  spec.required_ruby_version = '>= 2.0.0'

  spec.files = Dir["lib/**/*"] + %w{ bin/fastlane README.md LICENSE }

  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'nokogiri', '~> 1.6.5' # generating JUnit reports for Jenkins
  spec.add_dependency 'shenzhen', '~> 0.12.1' # to upload to Hockey and Crashlytics
  spec.add_dependency 'slack-notifier', '~> 1.0' # Slack notifications
  spec.add_dependency 'aws-sdk', '~> 1.0' # Upload ipa files to S3
  spec.add_dependency 'xcodeproj', '~> 0.20' # Needed for commit_version_bump action
  spec.add_dependency 'xcpretty', '~> 0.1' # prettify xcodebuild output
  spec.add_dependency 'fastlane_core', '>= 0.3.3' # all shared code and dependencies

  spec.add_dependency 'deliver', '>= 0.7.13'
  spec.add_dependency 'snapshot', '>= 0.4.0'
  spec.add_dependency 'frameit', '>= 0.2.3'
  spec.add_dependency 'pem', '>= 0.3.8'
  spec.add_dependency 'sigh', '>= 0.4.5'
  spec.add_dependency 'produce', '>= 0.1.6'
  spec.add_dependency 'cert', '>= 0.1.3'

  spec.add_dependency 'terminal-notifier', '~> 1.6.2'

  # Development only
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.1.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'yard', '~> 0.8.7.4'
  spec.add_development_dependency 'webmock', '~> 1.19.0'
  spec.add_development_dependency 'codeclimate-test-reporter'
  spec.add_development_dependency 'rubocop', '~> 0.29'
end
