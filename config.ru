require './config/environment'

if ActiveRecord::Migrator && ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end

use Rack::MethodOverride
use AutosController
use GaragesController
use UsersController
run ApplicationController
