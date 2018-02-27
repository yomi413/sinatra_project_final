require './config/environment'

if ActiveRecord::Migrator.needs_migration?
  raise 'Migration are pending.  Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
run ApplicationController