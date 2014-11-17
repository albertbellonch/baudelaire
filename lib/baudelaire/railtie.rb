module Baudelaire
  class Railtie < Rails::Railtie
    initializer 'baudelaire.model_extrension' do
      ActiveSupport.on_load :active_record do
        include Baudelaire::ModelExtension
      end
    end
  end
end
