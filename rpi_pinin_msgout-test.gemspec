Gem::Specification.new do |s|
  s.name = 'rpi_pinin_msgout-test'
  s.version = '0.1.0'
  s.summary = "Tests the rpi_pinin_msgout gem by simulating the triggering of a pin high 
  event using the keyboard's spacebar key."
  s.authors = ['James Robertson']
  s.files = Dir['lib/rpi_pinin_msgout-test.rb']
  s.add_runtime_dependency('rpi_pinin_msgout', '~> 0.2', '>=0.2.0')
  s.signing_key = '../privatekeys/rpi_pinin_msgout-test.pem'
  s.cert_chain  = ['gem-public_cert.pem']
  s.license = 'MIT'
  s.email = 'james@r0bertson.co.uk'
  s.homepage = 'https://github.com/jrobertson/rpi_pinin_msgout-test'
end
