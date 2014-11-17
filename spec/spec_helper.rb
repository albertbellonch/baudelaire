require 'active_record'

require 'baudelaire'

ActiveRecord::Base.establish_connection adapter: "sqlite3",
  database: ":memory:"
ActiveRecord::Base.send(:include, Baudelaire::ModelExtension)

require 'support/models'
