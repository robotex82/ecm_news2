module Ecm
  module News
    class Engine < ::Rails::Engine
      isolate_namespace Ecm::News
    end
  end
end
