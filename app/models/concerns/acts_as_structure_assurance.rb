module ActsAsStructureAssurance
  extend ActiveSupport::Concern

  included do
    has_one :structure_assurance, as: structure, dependent: :destroy
  end
end