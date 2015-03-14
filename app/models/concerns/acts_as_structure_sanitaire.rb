module ActsAsStructureSanitaire
  extend ActiveSupport::Concern

  included do
    has_one :structure_sanitaire, as: structure, dependent: :destroy
  end
end