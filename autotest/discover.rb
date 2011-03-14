require 'autotest/bundler'

Autotest.add_hook :initialize do |autotest|
  %w{.git .DS_Store ._* vendor tmp email}.each do |exception|
    autotest.add_exception(exception)
  end
end

Autotest.add_discovery { "rspec2" }