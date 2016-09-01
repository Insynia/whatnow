require 'rails/generators/active_record'

module Whatnow
  class InstallGenerator < ActiveRecord::Generators::Base
    desc 'This generator creates a migration file at db/migrate and an initializer'

    source_root File.expand_path('../install_templates', __FILE__)

    argument :name, type: :string, default: 'create_whatnow'

    def copy_files
      migration_template 'create_whatnows.rb', 'db/migrate/create_reviews.rb'
      copy_file 'initializer.rb', 'config/initializers/review.rb'
    end
  end
end
