require 'acts_as_markup'
require 'acts_as_published'
require 'friendly_id'
require 'kaminari'
require 'bootstrap-kaminari-views'

require 'ecm/news/engine'
require 'ecm/news/configuration'
require 'ecm/news/routing'

module Ecm
  module News
    extend Configuration

    def self.table_name_prefix
      'ecm_news_'
    end
  end
end
