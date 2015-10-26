require 'active_support/core_ext/module/delegation'
require 'active_support/core_ext/module/attribute_accessors'
require 'active_support/hash_with_indifferent_access'

module Ecm
  module News
    module Configuration
      def configure
        yield self
      end

      mattr_accessor :default_markup_language do
        'textile'
      end

      mattr_accessor :markup_languages do
        ['textile']
      end

      mattr_accessor :news_item_preview_lines do
        3
      end

      mattr_accessor :render_news_default_count do
        2
      end

      mattr_accessor :show_publish_time do
        true
      end

      mattr_accessor :news_item_preview_thumbnail_link_classes do
        'col-lg-4'
      end

      mattr_accessor :base_controller do
        'ApplicationController'
      end
    end
  end
end
