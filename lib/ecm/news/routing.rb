module Ecm
  module News
    class Routing
      def self.routes(router, options = {})
        options.reverse_merge!(
          item_actions: [:index, :show]
        )

        router.resources :ecm_news_items, only: options[:item_actions],
                                          controller: 'ecm/news/items' do
          router.get 'page/:page', action: :index, on: :collection
        end
      end
    end
  end
end
