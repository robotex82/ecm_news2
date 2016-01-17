module Ecm::News::Backend
  class EnginePolicy < Itsf::Backend::EnginePolicy
  end
end if Gem::Specification::find_all_by_name('itsf_backend').any?
