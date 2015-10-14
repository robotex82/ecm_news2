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
        []
      end

      mattr_accessor :news_item_preview_length do
        250
      end

      mattr_accessor :render_news_default_count do
        2
      end

      mattr_accessor :base_controller do
        'ApplicationController'
      end
    end
  end
end
