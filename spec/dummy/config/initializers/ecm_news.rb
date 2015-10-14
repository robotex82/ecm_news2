Ecm::News.configure do |config|
  # Number of characters to render in news preview
  #
  # default: config.news_preview_length = 250
  config.news_item_preview_length = 250

  # Number of items that will be shown in #render_news
  #
  # default: config.render_news_default_count = 2
  config.render_news_default_count = 2

  # Accepted markup languages
  #
  # default: config.markup_languages = %w[ markdown rdoc textile ]
  config.markup_languages = %w[ markdown rdoc textile ]

  # Default markup language
  #
  # default: config.default_markup_language = 'textile'
  config.default_markup_language = 'textile'

  # Set the base controller for the contact form
  #
  # Default: config.base_controller = 'ApplicationController'
  #
  config.base_controller = 'ApplicationController'
end

