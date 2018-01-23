
apt_update 'UPDATE!'

rbenv_system_install 'system'

rbenv_ruby '2.4.1'

rbenv_global '2.4.1'

postgresql_pg_gem 'system install' do
  gem_binary '/usr/local/rbenv/shims/gem'
  ruby_binary '/usr/local/rbenv/shims/ruby'
  options '--no-document'
  client_version '9.6'
end

postgresql_pg_gem 'omnibus install' do
  gem_binary '/opt/chef/embedded/bin/gem'
  ruby_binary '/opt/chef/embedded/bin/ruby'
  options '--no-document -- --with-pg-config=/usr/bin/pg_config'
  client_version '9.6'
end
