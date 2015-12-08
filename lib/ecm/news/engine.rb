module Ecm
  module News
    class Engine < ::Rails::Engine
      initializer :ecm_news_engine do
        ActiveAdmin.setup do |config|
          config.load_paths << File.join(root, 'app', 'admin')
        end
      end if Gem::Specification.find_all_by_name('activeadmin').any?
    end
  end
end
