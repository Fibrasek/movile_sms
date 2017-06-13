# coding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'movile_sms/version'

Gem::Specification.new do |spec|
  spec.name          = 'movile_sms'
  spec.version       = MovileSms::VERSION
  spec.authors       = ['Leandro']
  spec.email         = ['lndr.figueredo@gmail.com']
  spec.summary       = %('Send sms messages with Movile API.')
  spec.description   = %('Simple integrate and send messages with movile API')
  spec.homepage      = ''

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  else
    raise 'RubyGems 2.0 or newer is required to protect against ' \
      'public gem pushes.'
  end

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']
  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'minitest'
  spec.add_development_dependency 'rubocop'
  spec.add_dependency 'httparty'
  spec.add_dependency 'json'
end
